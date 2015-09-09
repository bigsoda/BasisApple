#import <Foundation/Foundation.h>

@interface TimerManager : NSObject
{
    NSMutableDictionary *_nsTimersByHaxeId;
    void (*_performTimerHandler)(int);
}
-(id) init;
-(void) performTimerCallback:(NSNumber *)haxeTimerId;
-(void) createNSTimer:(NSNumber *)haxeTimerId interval:(int)intervalInMiliseconds;
-(void) destroyNSTimer:(NSNumber *)haxeTimerId;
-(void) destroyAllNSTimers;
-(void) setPerformTimerHandler:(void (*)(int) ) handler;
@end
