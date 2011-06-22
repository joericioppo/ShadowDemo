//
//  UIBezierPath+ShadowPath.h
//  ShadowBoxing
//
//  Created by Joe Ricioppo on 4/6/10.
//  BDS licence booyaa
//

#import <UIKit/UIBezierPath.h>

@interface UIBezierPath (ShadowPath)

+ (UIBezierPath*)bezierPathWithCurvedShadowForRect:(CGRect)rect;

@end
