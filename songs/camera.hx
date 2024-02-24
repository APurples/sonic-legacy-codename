static var camMoveOffset:Float = 24;
static var camFollowChars:Bool = true;

function postUpdate() {
    if (camFollowChars) switch(strumLines.members[curCameraTarget].characters[0].getAnimName()){
        case "singLEFT", "singLEFT-alt":
            camFollow.x -= camMoveOffset;
        case "singDOWN", "singDOWN-alt":
            camFollow.y += camMoveOffset;
        case "singUP", "singUP-alt":
            camFollow.y -= camMoveOffset;
        case "singRIGHT", "singRIGHT-alt":
            camFollow.x += camMoveOffset;
    }
}