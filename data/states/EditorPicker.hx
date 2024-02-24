import legacy.StupidFuckingCursorDumb;

var cursor:StupidFuckingCursorDumb;

function postCreate(){
    cursor = new StupidFuckingCursorDumb(0.4, 0.4);
    add(cursor);
}