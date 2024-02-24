function beatHit(curBeat:Int){
    switch(curBeat){
        case 64, 80:
            tweenCamZoom(camGame, 0.8, 0.75, FlxEase.quadInOut);
        case 72, 88:
            tweenCamZoom(camGame, 0.875, 0.75, FlxEase.quadInOut);
        case 96:
            tweenCamZoom(camGame, 0.775, 1.75, FlxEase.quadInOut);
        case 103:
            dad.visible = false;    
    }
}

function stepHit(curStep:Int){
    switch(curStep){
        case 382:
            tweenCamFollow(400, 500, 1.25, FlxEase.quadInOut);
        case 402:
            tweenCamFollow(375, 500, 0.2, FlxEase.quadInOut);
        case 408:
            tweenCamFollow(325, 500, 1, FlxEase.quadInOut);
    }
}