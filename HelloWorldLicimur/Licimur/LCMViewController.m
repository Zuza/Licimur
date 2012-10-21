//
//  LCMViewController.m
//  Licimur
//
//  Created by Ivo Sluganovic on 16.10.2012..
//  Copyright (c) 2012. Ivo Sluganovic. All rights reserved.
//

#import "LCMViewController.h"

@interface LCMViewController ()

@end

@implementation LCMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDate *sadDate = [NSDate date];
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 20, 300, 60)];
    self.textView.text = [NSString stringWithFormat:@"Licimuri, sad je:\n%@", sadDate];
    [self.view addSubview:self.textView];

//    NSTimer *timer = [NSTimer timerWithTimeInterval:0.5 invocation:nil repeats:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [super dealloc];
    
    [self.textView release];
}

@end
