#import "TimerManager.h"
#import <objc/runtime.h>

@implementation TimerManager

-(id) init
{
	self = [super init];
	if (self != nil)
	{
		_nsTimersByHaxeId = [[NSMutableDictionary alloc] init];
	}
	return self;
}

-(void) performTimerHandler:(NSTimer *)timer
{
	if((_performTimerHandler != nil) && (timer != nil) && (timer.userInfo != nil)) {
		int haxeTimerId = [timer.userInfo intValue];
		_performTimerHandler(haxeTimerId);
	}
}

-(void) createNSTimer:(NSNumber *)haxeTimerId interval:(int)intervalInMiliseconds
{
	NSTimeInterval interval = intervalInMiliseconds/1000.0;
	NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:interval
                                  target:self
                                  selector:@selector(performTimerHandler:)
                                  userInfo: haxeTimerId
                                  repeats:YES];
	[_nsTimersByHaxeId setObject:timer forKey:haxeTimerId];
}

-(void) destroyNSTimer:(NSNumber *)haxeTimerId
{
	NSTimer *timer = [_nsTimersByHaxeId objectForKey:haxeTimerId];
	if(timer != nil)
	{
		[timer invalidate];
	}

	[_nsTimersByHaxeId removeObjectForKey:haxeTimerId];
}

-(void) destroyAllNSTimers
{
	for (id haxeTimerId in [_nsTimersByHaxeId allKeys]) {
       [self destroyNSTimer:haxeTimerId];
    }
}

-(void) setPerformTimerHandler:(void (*)(int) ) handler
{
	_performTimerHandler = handler;
}

@end
