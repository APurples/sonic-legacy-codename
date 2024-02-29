var crt:CustomShader = new CustomShader("crt");
var crtTwm:NumTween;

function onSongStart(){
    barSongLength = 92250;
}

function stepHit(curStep:Int){
    switch(curStep){
        case 536:
            scrollSpeed = scrollSpeed * 1.2;
        case 586:
            camGame.visible = camHUD.visible = false;
        case 616:
            FlxTween.num(96250, inst.length, 3, {ease: FlxEase.quadInOut, onUpdate: function(v:FlxTween){
                barSongLength = v.value;
            }});
            PlayState.SONG.meta.displayName = 'Obituary'; // changes the song name
            healthBar.createFilledBar(FlxColor.fromRGB(71, 63, 75), FlxColor.fromRGB(237, 28, 36));
            camGame.visible = camHUD.visible = true;
        case 653:
            tweenHealth(health - 1, 0.75, FlxEase.circOut);
        case 2268:
            camGame.addShader(crt);
            FlxTween.num(0, 5.0, 3.5, {ease: FlxEase.sineOut, onUpdate: function(v:FlxTween){
                crt.data.warp.value = [v.value, v.value];
            }});
    }
}