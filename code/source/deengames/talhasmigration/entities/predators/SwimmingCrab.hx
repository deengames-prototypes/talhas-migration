package deengames.talhasmigration.entities.predators;

import flixel.math.FlxRandom;

import helix.core.HelixSprite;
import helix.data.Config;

// https://en.wikipedia.org/wiki/Portunidae
class SwimmingCrab extends HelixSprite
{
    public function new()
    {
        super("assets/images/entities/swimmingCrab.png");
        this.reset(0, 0);
    }

    override public function reset(x:Float, y:Float):Void
    {
        super.reset(x, y);
        
        var random = new FlxRandom();
        var minVx = Config.get("swimmingCrabVxMin");
        var maxVx = Config.get("swimmingCrabVxMax");
        var minVy = Config.get("swimmingCrabVyMin");
        var maxVy = Config.get("swimmingCrabVyMax");

        var vx = random.int(minVx, maxVx);
        var vy = random.int(minVy, maxVy);

        this.setComponentVelocity("AutoMove", vx, vy);
    }
}