//
//  ViewController.m
//  PercentageChart
//
//  Created by Xavi Gil on 10/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGFloat _percentage;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _percentage = 10.0;
    
    [chart setMainColor:MAIN_ORANGE];
    [chart setLineColor:LINE_ORANGE];
    [chart setSecondaryColor:[UIColor darkGrayColor]];
    [chart setFontName:@"Helvetica-Bold"];
    [chart setFontSize:30.0];
    [chart setText:@"progress"];

    [chart setPercentage:73.5];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void) onGo:(id)sender
{
    [chart setPercentage:_percentage];
    if( [chart percentage] > 85 )
    {
        [chart setMainColor:MAIN_RED];
        [chart setLineColor:LINE_RED];
    }
    else if( [chart percentage] > 65 )
    {
        [chart setMainColor:MAIN_ORANGE];
        [chart setLineColor:LINE_ORANGE];
    }
    else
    {
        [chart setMainColor:MAIN_GREEN];
        [chart setLineColor:LINE_GREEN];
    }
    _percentage +=20;
    if( _percentage > 100.0 )
        _percentage -= 101.0;
    
}

@end
