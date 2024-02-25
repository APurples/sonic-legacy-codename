function onWeekSelect(){
    for(char in characterSprites)
        if (char.animation.exists("confirm")){
            // fixes bf's offset
            char.x += 12;
            char.y -= 6;
        }
}