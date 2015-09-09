package basis.timer;

class Timer
{
    public static inline var TIMER_ID_UNASSIGNED:Int = 0;

    public var timerId:Int;
    public var intervalMs(default, null):Int;

    public static function init():Void {}

    public function new(time_ms:Int)
    {
        timerId = TIMER_ID_UNASSIGNED;
        intervalMs = time_ms;

        BasisApplication.instance.timerManager.addTimer(this);
    }

    public dynamic function run() {}

    public function stop():Void
    {
        if(timerId != TIMER_ID_UNASSIGNED) {
            BasisApplication.instance.timerManager.removeTimer(timerId);
        }
    }

    public static function delay(f:Void->Void, time_ms:Int):Timer
    {
        var result:Timer = new Timer(time_ms);

        result.run = function() {
            f();
            result.stop();
        }

        return result;
    }

    public static function stamp():Float
    {
        return BasisApplication.instance.timerManager.getTimestamp();
    }
}