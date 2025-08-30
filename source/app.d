import parin;
import video;

// Called once when the game starts.
void ready() {
    lockResolution(VideoWidth, VideoHeight);
}

// Called every frame while the game is running.
// If true is returned, then the game will stop running.
bool update(float dt) {

    return false;
}

// Called once when the game ends.
void finish() {}

// Creates a main function that calls the given functions.
mixin runGame!(ready, update, finish);
