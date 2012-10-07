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
        _percentage = 100.0;
}

@end
