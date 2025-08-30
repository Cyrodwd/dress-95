module player;
import parin;

struct PlayerCursor {
    private GRect!float _hb;

    public void initialize() {
        _hb = GRect!float(0.0f, 0.0f, 16.0f, 16.0f);
    }

    pragma(inline, true)
    public void update() {
        _hb.position = mouse();
    }

    public bool hasInteract(GRect!float hb) {
        return (hb.hasIntersection(hb) && isPressed(Mouse.left));
    }
}