#import "BasisApplication.h"
#include "BasisStart.h"
#import <QuartzCore/QuartzCore.h>

@implementation BasisApplication

void (*_startBasisHandler)();

@synthesize objectManager, eventManager, timerManager;

BasisApplication *instance;

+(BasisApplication *) getInstance
{
	return instance;
}

+(void)setStartHandler:(void(*)())handler
{
	_startBasisHandler = handler;
}

+(void)callStartHandler
{
	_startBasisHandler();
}

+(void) setInstance:(BasisApplication *)value
{
	instance = value;
}

+(ObjectManager *) getObjectManager
{
	return instance.objectManager;
}

+(TimerManager *) getTimerManager
{
	return instance.timerManager;
}

@end
