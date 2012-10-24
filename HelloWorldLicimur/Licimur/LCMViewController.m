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
    
    /*
    NSDate *sadDate = [NSDate date];
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 20, 300, 60)];
    self.textView.text = [NSString stringWithFormat:@"Licimuri, sad je:\n%@", sadDate];
    [self.view addSubview:self.textView];
    */
    
    // URL request ----------
    NSLog(@"pocinjem s URL requestom");
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:
                                    [NSURL URLWithString:@"http://agrbin.brahle.com:8001/test/?proba=5"]];
    
    [request setHTTPMethod:@"POST"];
//    [request setValue:@"5" forHTTPHeaderField:@"proba"];
    
//    NSString *xmlString = @"<data><item>Item 1</item><item>Item 2</item></data>";
//
//    [request setValue:[NSString stringWithFormat:@"%d",
//                       [xmlString length]]
//   forHTTPHeaderField:@"Content-length"];
    
    // moguce je da ovo koristim kako bi slao vise podataka
//    [request setHTTPBody:[xmlString dataUsingEncoding:NSUTF8StringEncoding]];
  
    
    NSURLResponse *response = [[NSURLResponse alloc] init];
    NSError *error = [[NSError alloc] init];
    NSData *data = [[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error] retain];
    NSString *returnString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"Povratni string: |%@|", returnString);
    
//    [[NSURLConnection alloc]
//     initWithRequest:request
//     delegate:self];

//    NSTimer *timer = [NSTimer timerWithTimeInterval:0.5 invocation:nil repeats:YES];

}

- (NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response
{
    NSLog(@"t");
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"t");
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"t");    
}

// - (NSInputStream *)connection:(NSURLConnection *)connection needNewBodyStream:(NSURLRequest *)request;
// - (void)connection:(NSURLConnection *)connection   didSendBodyData:(NSInteger)bytesWritten
// totalBytesWritten:(NSInteger)totalBytesWritten
//totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite;

//- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse;

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"t");
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
