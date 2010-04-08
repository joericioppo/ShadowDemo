//
//  ShadowBoxingAppDelegate.h
//  ShadowBoxing
//
//  Created by Joe Ricioppo on 4/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShadowBoxingViewController;

@interface ShadowBoxingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ShadowBoxingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ShadowBoxingViewController *viewController;

@end

