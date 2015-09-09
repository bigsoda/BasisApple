#import "BasisApplication.h"
#import <objc/runtime.h>

namespace basis
{
    // Timer callback
    AutoGCRoot *_timermanager_performTimerHaxeCallback;

    void _timermanager_performTimerWrapper(int haxeTimerId)
    {
        val_call1(_timermanager_performTimerHaxeCallback->get(), alloc_int(haxeTimerId));
    }

    void timermanager_setPerformTimerHandler(value handler)
    {
        _timermanager_performTimerHaxeCallback = new AutoGCRoot(handler);
        [[BasisApplication getTimerManager] setPerformTimerHandler:&_timermanager_performTimerWrapper];
    }
    DEFINE_PRIM (timermanager_setPerformTimerHandler, 1);

    // Getting timestamp as Float from iOS
    value timermanager_getTimestamp()
    {
		double timestampWithFraction = [[NSDate date] timeIntervalSince1970];
		return alloc_float(timestampWithFraction);
    }
    DEFINE_PRIM (timermanager_getTimestamp, 0);

    // Managing NSTimers
    value timermanager_createNSTimer(value timerId, value intervalInMiliseconds)
    {
        int timerId_i = val_int(timerId);
        int intervalInMiliseconds_i = val_int(intervalInMiliseconds);

        NSNumber *haxeTimerId = [NSNumber numberWithInt:timerId_i];
        [[BasisApplication getTimerManager] createNSTimer:haxeTimerId interval:intervalInMiliseconds_i];

        return alloc_null();
    }
    DEFINE_PRIM (timermanager_createNSTimer, 2);

    value timermanager_destroyNSTimer(value timerId)
    {
        int timerId_i = val_int(timerId);

        NSNumber *haxeTimerId = [NSNumber numberWithInt:timerId_i];
        [[BasisApplication getTimerManager] destroyNSTimer:haxeTimerId];

        return alloc_null();
    }
    DEFINE_PRIM (timermanager_destroyNSTimer, 1);
}
