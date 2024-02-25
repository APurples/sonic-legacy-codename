function new(){
    FlxG.mouse.visible = false;

    CoolUtil.playMenuSong();
    Conductor.bpm = 128;
}

function update()
    if (FlxG.keys.justPressed.D)
        FlxG.switchState(new ModState("desktop/DesktopMenuState"));