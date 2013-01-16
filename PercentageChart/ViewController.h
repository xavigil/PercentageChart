//
//  ViewController.h
//  PercentageChart
//
//  Created by Xavi Gil on 10/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PercentageChart.h"

#define MAIN_ORANGE [UIColor colorWithRed:0.83 green:0.38 blue:0.0 alpha:1.0]
#define LINE_ORANGE [UIColor orangeColor]
#define MAIN_RED [UIColor colorWithRed:0.70 green:0.0 blue:0.0 alpha:1.0]
#define LINE_RED [UIColor redColor]
#define MAIN_GREEN [UIColor colorWithRed:0.47 green:0.7 blue:0.0 alpha:1.0]
#define LINE_GREEN [UIColor colorWithRed:0.0 green:0.7 blue:0.0 alpha:1.0]

@interface ViewController : UIViewController
{
    IBOutlet PercentageChart *chart;
}

-(IBAction) onGo:(id)sender;

@end
