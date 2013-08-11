//
//  ViewController.m
//  stopwatch
//
//  Created by Umut Kanbak on 7/11/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//


#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    
    __strong IBOutlet UILabel *timerLabel;
    SecondViewController *mySecondViewController;
    
    
}
- (IBAction)startButton:(id)sender;
- (IBAction)stopButton:(id)sender;
- (IBAction)pauseButton:(id)sender;


- (IBAction)goToCountdownTimer:(id)sender;

@end

@implementation ViewController

@synthesize timerLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    timerLabel.text = @"00.00";
    timerIsRunning = false;
    startDate = [NSDate date];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)startButton:(id)sender {
    [timer invalidate];
    timer = nil;
    if(!timerIsRunning){
        timerIsRunning = true;
        
        if (timer == nil) {
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0
                                                     target:self
                                                   selector:@selector(updateTimer)
                                                   userInfo:nil
                                                    repeats:YES];
        }
    }else{
        
        timerIsRunning = false;
        [timer invalidate]; 
        timer = nil;
        return;
        
    }
    
}

-(void)updateTimer
{
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"mm:ss"];
    NSString *timeString=[dateFormatter stringFromDate:timerDate];
    timerLabel.text = timeString;
    
    
}

-(IBAction)stopButton:(id)sender{
    [timer invalidate]; //stop timer
    timer = nil;
    startDate = [NSDate date];
    timerLabel.text = @"00.00";
    timerIsRunning = false;
}
- (IBAction)pauseButton:(id)sender {
    [timer invalidate];
    timer = false;
    timerIsRunning = false;
}



- (IBAction)goToCountdownTimer:(id)sender {
    [timer invalidate]; //stop timer
    timer = nil;
    startDate = [NSDate date];
    timerLabel.text = @"00.00";
    timerIsRunning = false;
    mySecondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.view addSubview:mySecondViewController.view];
    
}
@end
