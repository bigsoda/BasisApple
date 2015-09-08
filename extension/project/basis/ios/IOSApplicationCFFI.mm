#import <UIKit/UIKit.h>
#import "BasisApplication.h"
#import <QuartzCore/QuartzCore.h>

namespace basis
{
	void iosapplication_addToRootView(value objectID)
    {
    	[((IOSApplication *)[BasisApplication getInstance]) addToRootView:[NSString stringWithCString:val_string(objectID) encoding:NSUTF8StringEncoding]];
    }
    DEFINE_PRIM (iosapplication_addToRootView, 1);
}
