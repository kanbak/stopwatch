//
//  SecondViewController.h
//  stopwatch
//
//  Created by Umut Kanbak on 7/12/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface SecondViewController : UIViewController
{
    NSTimer *timer;
    IBOutlet UILabel *CountDownLabel;
}

@property (nonatomic, retain) UILabel *CountDownLabel;
-(void)updateCounter:(NSTimer *)theTimer;




@end

