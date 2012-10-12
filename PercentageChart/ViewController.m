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

    
    UIColor *orange = [UIColor colorWithRed:0.83 green:0.38 blue:0.0 alpha:1.0];
    [chart setMainColor:orange];
    [chart setSecondaryColor:[UIColor darkGrayColor]];
    [chart setLineColor:[UIColor orangeColor]];
    [chart setFontName:@"Arial"];
    [chart setText:@"progress"];

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
    chart.percentage = _percentage;
    _percentage +=20;
    if( _percentage > 100.0 )
        _percentage -= 101.0;
}

@end
