//
//  UIBezierPath+ShadowPath.m
//  ShadowBoxing
//
//  Created by Joe Ricioppo on 4/6/10.
//  BDS licence booyaa
//

#import "UIBezierPath+ShadowPath.h"

static const CGFloat offset = 10.0;
static const CGFloat curve = 5.0;
static const CGFloat inset = 10.0;

@implementation UIBezierPath (ShadowPath)

+ (UIBezierPath*)bezierPathWithCurvedShadowForRect:(CGRect)rect {

	UIBezierPath *path = [UIBezierPath bezierPath];	
	
	CGPoint topLeft		 = rect.origin;
	CGPoint bottomLeft	 = CGPointMake(0.0, CGRectGetHeight(rect)+offset);
	CGPoint bottomMiddle = CGPointMake(CGRectGetWidth(rect)/2, CGRectGetHeight(rect)-curve);	
	CGPoint bottomRight	 = CGPointMake(CGRectGetWidth(rect), CGRectGetHeight(rect)+offset);
	CGPoint topRight	 = CGPointMake(CGRectGetWidth(rect), 0.0);
	
	[path moveToPoint:topLeft];	
	[path addLineToPoint:bottomLeft];
	[path addQuadCurveToPoint:bottomRight
				 controlPoint:bottomMiddle];
	[path addLineToPoint:topRight];
	[path addLineToPoint:topLeft];
	[path closePath];
	
	return path;
}


+ (UIBezierPath*)bezierPathWithCurvedInsetShadowForRect:(CGRect)rect {
    
	UIBezierPath *path = [UIBezierPath bezierPath];	
	
	CGPoint topLeft		 = CGPointMake(inset, 0.0);
	CGPoint bottomLeft	 = CGPointMake(inset, CGRectGetHeight(rect)+offset);
	CGPoint bottomMiddle = CGPointMake(CGRectGetWidth(rect)/2, CGRectGetHeight(rect)-curve);	
	CGPoint bottomRight	 = CGPointMake(CGRectGetWidth(rect) - inset, CGRectGetHeight(rect)+offset);
	CGPoint topRight	 = CGPointMake(CGRectGetWidth(rect) - inset, 0.0);
	
	[path moveToPoint:topLeft];	
	[path addLineToPoint:bottomLeft];
	[path addQuadCurveToPoint:bottomRight
				 controlPoint:bottomMiddle];
	[path addLineToPoint:topRight];
	[path addLineToPoint:topLeft];
	[path closePath];
	
	return path;
}

@end
