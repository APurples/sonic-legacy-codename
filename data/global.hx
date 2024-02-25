static var initialized:Bool = false;

function new(){
    window.title = "Friday Night Funkin': Rodentrap";

    var option = FlxG.save.data;
    if (option.customCursor == null) option.customCursor = true;
}

static var redirectStates:Map<FlxState, String> = [
    TitleState => "menus/SonicTitleState",
];

function update() {
    if (FlxG.keys.justPressed.F5)
        FlxG.resetState();
}

function preStateSwitch() {
    FlxG.camera.bgColor = 0xFF000000;

	if (!initialized){
		initialized = true;
    }else
		for (redirectState in redirectStates.keys())
			if (FlxG.game._requestedState is redirectState)
				FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}