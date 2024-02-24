import flixel.addons.display.FlxBackdrop;
import flixel.text.FlxTextBorderStyle;
import flixel.effects.FlxFlicker;
import flixel.math.FlxRect;
import hxvlc.openfl.Video;
import hxvlc.flixel.FlxVideo;

var transitioning:Bool = false;

function new(){
    FlxG.mouse.visible = false;

    CoolUtil.playMenuSong();
    Conductor.bpm = 128;
}

function create(){
    bg = new FlxBackdrop(Paths.image('menus/titlescreen/rodentrap/city'));
    bg.velocity.x = 100;
    bg.antialiasing = Options.antialiasing;
    add(bg);

    rSonicOverlay = new FlxSprite(500, -100).loadGraphic(Paths.image('menus/titlescreen/rodentrap/sonic'));
    rSonicOverlay.scale.set(0.9, 0.9);
    rSonicOverlay.updateHitbox();
    rSonicOverlay.blend = 9;
    rSonicOverlay.clipRect = new FlxRect(0, 0, rSonicOverlay.width - 250, rSonicOverlay.height);
    rSonicOverlay.antialiasing = Options.antialiasing;
    add(rSonicOverlay);

    bar1 = new FlxSprite().makeSolid(FlxG.width, 124, FlxColor.BLACK);
    add(bar1);

    bar2 = new FlxSprite(0, FlxG.height - 124).makeSolid(FlxG.width, 124, FlxColor.BLACK);
    add(bar2);

    rSonic = new FlxSprite(532, -65).loadGraphic(Paths.image('menus/titlescreen/rodentrap/sonic'));
    rSonic.scale.set(0.675, 0.675);
    rSonic.antialiasing = Options.antialiasing;
    add(rSonic);

    rLogo = new FlxSprite(-160, 170).loadGraphic(Paths.image('menus/titlescreen/rodentrap/rodentraplogo'));
    rLogo.scale.set(0.675, 0.675);
    rLogo.antialiasing = Options.antialiasing;
    add(rLogo);

    pressStartTxt = new FlxText(188, 510, 0, "Press ENTER to start!", 32);
    pressStartTxt.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, "center", FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    pressStartTxt.scrollFactor.set();
    pressStartTxt.borderSize = 1.25;
    add(pressStartTxt);

    b = new FlxSprite().makeSolid(FlxG.width,FlxG.height,FlxColor.BLACK);
    b.alpha = 0;
    add(b);

    vid = new FlxVideo();
    vid.onEndReached.add(vid.dispose);
    vid.load(Paths.video('intro'));
}

var tmr:Float = 15;
var playingVideo:Bool = false;
function update(elapsed:Float){
    tmr -= elapsed;

    if (FlxG.sound.music != null)
        Conductor.songPosition = FlxG.sound.music.time;

    var pressedEnter:Bool = FlxG.keys.justPressed.ENTER || controls.ACCEPT;
    if (pressedEnter && !transitioning)
        enterPressed();

    /*if (tmr <= 0 && !playingVideo) {
        playingVideo = true;
        FlxG.sound.music.fadeOut(2,0, Void -> {FlxG.sound.music.destroy(); FlxG.sound.music = null;});
        FlxTween.tween(b, {alpha: 1}, 2, {onComplete: Void -> {
            vid.onEndReached.add(()->{
                vid.dispose();
            }, true);
            vid.play();
        }});
    }*/
}

function stepHit(){
    if (curStep <= 13)
        FlxG.camera.visible = false;

    if (curStep == 13){
        FlxG.camera.visible = true;
        if (Options.flashingMenu) FlxG.camera.flash(0xD0FFFFFF, 1.25);
    }
}

function measureHit(){
    rLogo.scale.set(0.725, 0.725);
    FlxTween.tween(rLogo.scale, {x: 0.675, y: 0.675}, 0.5, {ease: FlxEase.quartOut});

    FlxG.camera.zoom += 0.015;
    FlxTween.tween(FlxG.camera, {zoom: 1}, 0.25, {ease: FlxEase.quartOut});
}

function enterPressed(){
    if (Options.flashingMenu) FlxG.camera.flash(FlxColor.WHITE, 1);
    FlxG.sound.play(Paths.sound('menu/confirm'), 0.7);

    transitioning = true;
    if (pressStartTxt != null) {
        pressStartTxt.alpha = 1.0;
        pressStartTxt.color = FlxColor.YELLOW;
        FlxFlicker.flicker(pressStartTxt, 1, 0.06, true, true);
    }

    new FlxTimer().start(1, function(tmr:FlxTimer){
        FlxG.switchState(new MainMenuState());
    });
}