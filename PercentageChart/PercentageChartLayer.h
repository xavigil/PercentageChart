//
//  PercentageChartLayer.h
//  PercentageChart
//
//  Created by Xavi Gil on 10/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#define DEG2RAD(angle) angle*M_PI/180.0

#define INITIAL_ANGLE -180

@interface PercentageChartLayer : CALayer

@property(nonatomic) CGFloat percentage;

@property(nonatomic) UIColor *mainColor;
@property(nonatomic) UIColor *secondaryColor;

- (id)initWithLayer:(id)aLayer;

@end
