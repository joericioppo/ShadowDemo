//
//  ShadowBoxingAppDelegate.h
//  ShadowBoxing
//
//  Created by Joe Ricioppo on 4/6/10.
//  BDS licence booyaa
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

