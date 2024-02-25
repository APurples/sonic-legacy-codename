//

import funkin.editors.charter.CharterSelection;
import legacy.StupidFuckingCursorDumb;

var cursor:StupidFuckingCursorDumb;

function postCreate(){
    cursor = new StupidFuckingCursorDumb(0.4, 0.4);
    cursor.cameras = [uiCamera];
    add(cursor);
    trace(cursor.cameras);
}