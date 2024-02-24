function stepHit(curStep:Int){
    switch(curStep){
        case 536:
            scrollSpeed = scrollSpeed * 1.2;
        case 586:
            camGame.visible = camHUD.visible = false;
        case 616:
            camGame.visible = camHUD.visible = true;
        case 653:
            health = 1;
            boyfriend.playAnim("hurt", true);
    }
}