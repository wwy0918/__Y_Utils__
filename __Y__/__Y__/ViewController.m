//
//  ViewController.m
//  __Y__
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "__Y__.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"%@",[self localeDate:[NSDate date]]);
    
}


- (NSDate*)localeDate:(NSDate*)date
{
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate:date];
    NSDate *localeDate = [date dateByAddingTimeInterval:interval];
    return localeDate;
}


@end
