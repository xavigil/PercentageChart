//
//  PercentageChart.m
//  PercentageChart
//
//  Created by Xavi Gil on 10/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PercentageChart.h"

@interface PercentageChart()
{
    CALayer *_mainLayer;
}

-(void) refresh;

@end



@implementation PercentageChart

@synthesize percentage;
@synthesize mainColor;
@synthesize secondaryColor;
@synthesize lineColor;

-(void) setPercentage:(CGFloat)newValue
{
    percentage = newValue;
    [self refresh];
}

-(void) setMainColor:(UIColor *)newColor
{
    mainColor = newColor;
    [self refresh];
}

-(void) setSecondaryColor:(UIColor *)newColor
{
    secondaryColor = newColor;
    [self refresh];
}

-(void) setLineColor:(UIColor *)newColor
{
    lineColor = newColor;
    [self refresh];
}

-(void) initialize
{
    _mainLayer = [PercentageChartLayer layer];
    [self.layer addSublayer:_mainLayer];    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
    {
        [self initialize];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) 
    {
        [self initialize];
    }
    return self;
}

-(void) refresh
{
    _mainLayer.frame = self.bounds;
    
    PercentageChartLayer *layer = (PercentageChartLayer *) _mainLayer;
    layer.percentage = self.percentage;
    layer.mainColor = self.mainColor;
    layer.secondaryColor = self.secondaryColor;
    layer.lineColor = self.lineColor;
}



@end
