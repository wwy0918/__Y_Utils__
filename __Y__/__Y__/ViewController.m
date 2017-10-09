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
    
    NSLog(@"%@ \n %@",[ViewController y_propertyList], [ViewController y_ivarList]);
    
    
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    NSString *str = @"7sjf78sf990s";
    NSLog(@"set----%@",[str componentsSeparatedByCharactersInSet:set]);
    
    NSLog(@"set----%@",[@"ad1sa1dfs1fa" componentsSeparatedByString:@"1"]);
    NSCharacterSet *invertedSet = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
    NSLog(@"invertedSet----%@",[str componentsSeparatedByCharactersInSet:invertedSet]);
 
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    NSLog(@"--- %d ---",[self y_isBlank:@"   \n   "]);
}

- (BOOL)y_isBlank:(NSString *)str
{
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *new = [str stringByTrimmingCharactersInSet:blank];
    return !new.length;
}

- (NSDate*)localeDate:(NSDate*)date
{
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate:date];
    NSDate *localeDate = [date dateByAddingTimeInterval:interval];
    return localeDate;
}


@end
