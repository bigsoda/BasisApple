#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "ObjectManager.h"
#import "EventManager.h"
#import "TimerManager.h"

@interface BasisApplication : NSObject
{
	
}

	+(void) setInstance:(BasisApplication *)value;
	+(BasisApplication *) getInstance;
	+(ObjectManager *) getObjectManager;
	+(TimerManager *) getTimerManager;
	+(void)setStartHandler:(void(*)())handler;
	+(void)callStartHandler;
	
	@property (nonatomic, retain) ObjectManager *objectManager;
	@property (nonatomic, retain) EventManager *eventManager;
	@property (nonatomic, retain) TimerManager *timerManager;
@end
