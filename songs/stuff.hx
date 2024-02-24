//
var cancelCameraMove:Bool = false;

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

public function cancelTwnCamFollow()
    cancelCameraMove = false;

function onCameraMove(e)
    if(cancelCameraMove)
        e.cancel();