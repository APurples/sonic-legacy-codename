function update(){
    if (!PlayState.isStoryMode) return;

    if (FlxG.save.data.botplay)
        PlayState.storyPlaylist = ["2torial", "free-4-me"];
    else
        PlayState.storyPlaylist = ["2torial", "obituary"];
}