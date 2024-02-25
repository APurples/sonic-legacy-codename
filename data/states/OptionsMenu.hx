import legacy.StupidFuckingCursorDumb;
import funkin.backend.system.framerate.Framerate;

var cursor:StupidFuckingCursorDumb;

function postCreate(){
    FlxTween.tween(Framerate.offset, {y: pathBG.height + 5}, .75, {ease: FlxEase.elasticOut});
    
    cursor = new StupidFuckingCursorDumb(0.4, 0.4);
    add(cursor);

    CoolUtil.playMusic(Paths.music("breakfast"), false, 1, true, 95);

    background = new FlxSprite(0, 0).loadGraphic(Paths.image('menus/menuDesat'));
    background.color = FlxColor.BLUE;
    background.screenCenter();
	background.scrollFactor.set();
    insert(1, background);
}