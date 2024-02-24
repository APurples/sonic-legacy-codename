public var icoP1:HealthIcon;
public var icoP2:HealthIcon;

function postCreate() {
    icoP1 = new HealthIcon(boyfriend != null ? boyfriend.getIcon() : "face", true);
    icoP2 = new HealthIcon(dad != null ? dad.getIcon() : "face", false);
    for(ico in [icoP1, icoP2]) {
        ico.y = healthBar.y - (ico.height / 2);
        ico.cameras = [camHUD];
    }
    insert(members.indexOf(healthBar) + 1, icoP1);
    insert(members.indexOf(healthBar) + 2, icoP2);

    for (i in [iconP1, iconP2]) remove(i); // fuck you og icons
}

function update(elapsed:Float){
    for (ico in [icoP1, icoP2]){
        var mult:Float = FlxMath.lerp(1, ico.scale.x, FlxMath.bound(1 - (elapsed * 27), 0, 1));
        ico.scale.set(mult, mult);
        ico.updateHitbox();
    }

    icoP1.x = healthBar.x + (healthBar.width * (FlxMath.remapToRange(healthBar.percent, 0, 100, 100, 0) * 0.01)) + (150 * icoP1.scale.x - 150) / 2 - 26;
    icoP2.x = healthBar.x + (healthBar.width * (FlxMath.remapToRange(healthBar.percent, 0, 100, 100, 0) * 0.01)) - (150 * icoP2.scale.x) / 2 - 26 * 2;

    icoP1.health = healthBar.percent / 100;
    icoP2.health = 1 - (healthBar.percent / 100);
}

function beatHit(){
    for (ico in [icoP1, icoP2]){
        ico.scale.set(1.2, 1.2);
        ico.updateHitbox();
    }
}