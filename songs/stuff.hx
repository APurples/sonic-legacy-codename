//
var cancelCameraMove:Bool = false;

public function tweenScrollSpd(multiplier:Float = 1, time:Float = 1)
    FlxTween.num(scrollSpeed, scrollSpeed * multiplier, time, {ease: FlxEase.linear, onUpdate: function(v:FlxTween){
        scrollSpeed = v.value;
    }});

public function tweenCamZoom(camera:FlxCamera, newZoom:Float, time:Float, ease:FlxEase)
    FlxTween.tween(camera, {zoom: newZoom}, time, {
        ease: ease,
        onComplete: function(twn:FlxTween){
            defaultCamZoom = camera.zoom;
        }
    });

public function tweenCamFollow(xPos:Float, yPos:Float, time:Float, ease:FlxEase){
    FlxTween.tween(camFollow, {x: xPos, y: yPos}, time, {ease: ease});
    cancelCameraMove = true;
}

public function tweenHealth(newHealth:Float, time:Float, ease:FlxEase)
    FlxTween.num(health, newHealth, time, {ease: ease, onUpdate: function(v:FlxTween){
        health = v.value;
    }});

public function cancelTwnCamFollow()
    cancelCameraMove = false;

function onCameraMove(e)
    if(cancelCameraMove)
        e.cancel();