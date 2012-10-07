//
//  PercentageChartLayer.m
//  PercentageChart
//
//  Created by Xavi Gil on 10/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PercentageChartLayer.h"

@implementation PercentageChartLayer

@dynamic percentage;

@synthesize mainColor;
@synthesize secondaryColor;


-(CABasicAnimation *)makeAnimationForKey:(NSString *)key 
{
	CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:key];
	anim.fromValue = [[self presentationLayer] valueForKey:key];
	anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
	anim.duration = 0.5;
    
	return anim;
}

-(id<CAAction>)actionForKey:(NSString *)event 
{
    if ( [event isEqualToString:@"percentage"] ) 
        return [self makeAnimationForKey:event];
    
    return [super actionForKey:event];
}

- (id)initWithLayer:(id)aLayer 
{
    if (self = [super initWithLayer:aLayer]) 
    {
        if ([aLayer isKindOfClass:[PercentageChartLayer class]]) 
        {
            PercentageChartLayer *layer = (PercentageChartLayer *)aLayer;
            self.percentage = layer.percentage;
            self.mainColor = layer.mainColor;
            self.secondaryColor = layer.secondaryColor;            
        }
    }
    
    return self;
}

+ (BOOL)needsDisplayForKey:(NSString *)key 
{    
    if( [key isEqualToString:@"percentage"] )
        return YES;
    
    return [super needsDisplayForKey:key];
}

-(void)drawInContext:(CGContextRef)ctx 
{
    CGPoint center = CGPointMake( self.bounds.size.width/2, self.bounds.size.height/2 );
    CGFloat radius = MIN( center.x, center.y );
    
    CGContextBeginPath( ctx );
    CGContextMoveToPoint( ctx, center.x, center.y );
    
    CGFloat startingAngle = DEG2RAD( INITIAL_ANGLE );
    
    CGPoint p1 = CGPointMake( center.x + radius * cosf(startingAngle), center.y + radius * sinf(startingAngle) );
    CGContextAddLineToPoint( ctx, p1.x, p1.y );
    
    CGFloat f = INITIAL_ANGLE - ( INITIAL_ANGLE * self.percentage/100.0 );
    CGFloat endingAngle = DEG2RAD( f );
    CGContextAddArc( ctx, center.x, center.y, radius, startingAngle, endingAngle, NO );
    
    CGContextClosePath(ctx);
    
    // Color it
    CGContextSetFillColorWithColor( ctx, self.mainColor.CGColor );
    CGContextSetStrokeColorWithColor( ctx, self.mainColor.CGColor );
    CGContextSetLineWidth( ctx, 1 );
    
    CGContextDrawPath( ctx, kCGPathFillStroke );
}

@end
