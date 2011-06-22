//
//  ShadowBoxingAppDelegate.m
//  ShadowBoxing
//
//  Created by Joe Ricioppo on 4/6/10.
//  BDS licence booyaa
//

#import "ShadowBoxingAppDelegate.h"
#import "ShadowBoxingViewController.h"

@implementation ShadowBoxingAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
