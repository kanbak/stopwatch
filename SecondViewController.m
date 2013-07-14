//
//  SecondViewController.m
//  stopwatch
//
//  Created by Umut Kanbak on 7/12/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()


- (IBAction)SetCountdown5mins:(id)sender;
- (IBAction)setCountdown10mins:(id)sender;
- (IBAction)setCountdown15mins:(id)sender;
- (IBAction)goToStopwatchButton:(id)sender;


@end

@implementation SecondViewController
@synthesize CountDownLabel;

int minutes, seconds;
int secondsLeft;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)updateCounter:(NSTimer *)theTimer {
    if(secondsLeft > 0 ){
        secondsLeft -- ;
        minutes = (secondsLeft % 3600) / 60;
        seconds = (secondsLeft %3600) % 60;
        CountDownLabel.text = [NSString stringWithFormat:@"%02d:%02d", minutes, seconds];
    }
    else{
        secondsLeft = 0;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SetCountdown5mins:(id)sender {
    CountDownLabel.text = @"05.00";
    [timer invalidate];
    timer = nil;
    secondsLeft = 300;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateCounter:) userInfo:nil repeats:YES];
    

}

- (IBAction)setCountdown10mins:(id)sender {
    CountDownLabel.text = @"10.00";
    [timer invalidate];
    timer = nil;
    secondsLeft = 600;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateCounter:) userInfo:nil repeats:YES];
}

- (IBAction)setCountdown15mins:(id)sender {
    CountDownLabel.text = @"15.00";
    [timer invalidate];
    timer = nil;
    secondsLeft = 900;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateCounter:) userInfo:nil repeats:YES];
}

- (IBAction)goToStopwatchButton:(id)sender {
    CountDownLabel.text = @"00.00";
    [timer invalidate];
    timer = nil;
    secondsLeft = 0;
    [self.view removeFromSuperview];
}
@end
