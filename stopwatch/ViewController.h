//
//  ViewController.h
//  stopwatch
//
//  Created by Umut Kanbak on 7/11/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    bool timerIsRunning;
    NSTimer *timer;
    NSDate *startDate;
}


@property (strong,nonatomic) IBOutlet UILabel *timerLabel;





 -(void) updateTimer;


@end
