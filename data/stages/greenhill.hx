// will prob convert to xml someday

function create(){
    remove(dad);
    remove(boyfriend);

    greenHillSky = new FlxSprite(-485, -600);
    greenHillSky.loadGraphic(Paths.image('stages/bg-greenhill/Sky'));
    greenHillSky.scrollFactor.set(0, 0);
    greenHillSky.setGraphicSize(Std.int(greenHillSky.width * 2.0));
    greenHillSky.updateHitbox();
    add(greenHillSky);

    greenHillClouds = new FlxSprite(-607, -335);
    greenHillClouds.loadGraphic(Paths.image('stages/bg-greenhill/Clouds'));
    greenHillClouds.scrollFactor.set(0.05, 0.05);
    greenHillClouds.setGraphicSize(Std.int(greenHillClouds.width * 2.0));
    greenHillClouds.updateHitbox();
    greenHillClouds.antialiasing = Options.antialiasing;
    add(greenHillClouds);

    greenHillMountians = new FlxSprite(-589, -190);
    greenHillMountians.loadGraphic(Paths.image('stages/bg-greenhill/Moutians'));
    greenHillMountians.scrollFactor.set(0.1, 0.1);
    greenHillMountians.setGraphicSize(Std.int(greenHillMountians.width * 1.75));
    greenHillMountians.updateHitbox();
    greenHillMountians.antialiasing = Options.antialiasing;
    add(greenHillMountians);

    greenHillWater = new FlxSprite(-633, 235);
    greenHillWater.loadGraphic(Paths.image('stages/bg-greenhill/Water'));
    greenHillWater.scrollFactor.set(0.2, 0.2);
    greenHillWater.setGraphicSize(Std.int(greenHillWater.width * 2.0));
    greenHillWater.updateHitbox();
    greenHillWater.antialiasing = Options.antialiasing;
    add(greenHillWater);

    greenhillLand = new FlxSprite(-1048, -200);
    greenhillLand.loadGraphic(Paths.image('stages/bg-greenhill/Ground'));
    greenhillLand.setGraphicSize(Std.int(greenhillLand.width * 1.75));
    greenhillLand.updateHitbox();
    greenhillLand.antialiasing = Options.antialiasing;
    add(greenhillLand);

    greenhillRings = new FlxSprite(-575, 280);
    greenhillRings.frames = Paths.getSparrowAtlas('stages/bg-greenhill/rings');
    greenhillRings.animation.addByPrefix('idle ring', 'idle ring', 12, true);
    greenhillRings.animation.play('idle ring', true);
    greenhillRings.setGraphicSize(Std.int(greenhillRings.width * 0.875));
    greenhillRings.updateHitbox();
    greenhillRings.antialiasing = Options.antialiasing;
    add(greenhillRings);
    
    add(dad);
    add(boyfriend);

    greenHillRocks = new FlxSprite(-1029, 225);
    greenHillRocks.loadGraphic(Paths.image('stages/bg-greenhill/Foreground'));
    greenHillRocks.scrollFactor.set(1.25, 1.25);
    greenHillRocks.setGraphicSize(Std.int(greenHillRocks.width * 2.5));
    greenHillRocks.updateHitbox();
    greenHillRocks.antialiasing = Options.antialiasing;
    add(greenHillRocks);
}