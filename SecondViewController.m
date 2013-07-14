//
//  SecondViewController.m
//  stopwatch
//
//  Created by Umut Kanbak on 7/12/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *CountDownLabel;

- (IBAction)SetCountdown5mins:(id)sender;
- (IBAction)setCountdown10mins:(id)sender;
- (IBAction)setCountdown15mins:(id)sender;
- (IBAction)goToStopwatchButton:(id)sender;


@end

@implementation SecondViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SetCountdown5mins:(id)sender {
    
}

- (IBAction)setCountdown10mins:(id)sender {

}

- (IBAction)setCountdown15mins:(id)sender {

}

- (IBAction)goToStopwatchButton:(id)sender {
    [self.view removeFromSuperview];
}
@end
