//
//  ShadowBoxingViewController.m
//  ShadowBoxing
//
//  Created by Joe Ricioppo on 4/6/10.
//  BDS licence booyaa
//

#import "ShadowBoxingViewController.h"
#import "UIBezierPath+ShadowPath.h"


@implementation ShadowBoxingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 500.0, 375.0)];
	view.center = self.view.center;
	view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | 
						   UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
	view.layer.contents = (id)[UIImage imageNamed:@"sunset.png"].CGImage;
	view.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:1.0].CGColor;
	view.layer.borderWidth = 5.0;
	view.layer.shadowOffset = CGSizeMake(0, 3);
	view.layer.shadowOpacity = 0.7;	
	view.layer.shouldRasterize = YES;

	UIBezierPath *path = [UIBezierPath bezierPathWithCurvedShadowForRect:view.bounds];	
	view.layer.shadowPath = path.CGPath;	
	
	[self.view addSubview:view];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)dealloc {
    [super dealloc];
}

@end
