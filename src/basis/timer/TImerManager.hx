package basis.timer;

import basis.object.TypeValues;
import cpp.Lib;

class TimerManager
{
	private static var timermanager_getTimestamp = Lib.load ("basis", "timermanager_getTimestamp", 0);
	private static var timermanager_createNSTimer = Lib.load ("basis", "timermanager_createNSTimer", 2);
	private static var timermanager_destroyNSTimer = Lib.load ("basis", "timermanager_destroyNSTimer", 1);
	private static var timermanager_setPerformTimerHandler = Lib.load ("basis", "timermanager_setPerformTimerHandler", 1);


	private var haxeNextTimerId:Int;
	private var haxeTimersMap:Map<Int,Timer>;

	public function new():Void
	{
		haxeNextTimerId = 1;
		haxeTimersMap = new Map<Int,Timer>();

		timermanager_setPerformTimerHandler(this.performTimerCallback);
	}

	public function addTimer(timer:Timer):Void
	{
		timer.timerId = createTimerId();
		haxeTimersMap.set(timer.timerId, timer);

		timermanager_createNSTimer(timer.timerId, timer.intervalMs);
	}

	public function removeTimer(timerId:Int):Void
	{
		if(!haxeTimersMap.exists(timerId)) {
			return;
		}

		var timer:Timer = haxeTimersMap.get(timerId);
		haxeTimersMap.remove(timerId);

		timermanager_destroyNSTimer(timerId);
	}

	public function removeAllTimers():Void
	{
		for(timerId in haxeTimersMap.keys()) {
			removeTimer(timerId);
		}
	}

	public function getTimestamp():Float
	{
		return timermanager_getTimestamp();
	}

	public function performTimerCallback(timerId:Int):Void
	{
		if(!haxeTimersMap.exists(timerId)) {
			return;
		}
		var timer:Timer = haxeTimersMap.get(timerId);
		timer.run();
	}

	private function createTimerId():Int
	{
		var result:Int = haxeNextTimerId;
		haxeNextTimerId++;
		return result;
	}
}