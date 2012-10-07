//
//  ViewController.h
//  PercentageChart
//
//  Created by Xavi Gil on 10/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PercentageChart.h"

@interface ViewController : UIViewController
{
    IBOutlet PercentageChart *chart;
}

-(IBAction) onGo:(id)sender;

@end
