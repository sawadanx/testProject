//
//  ViewController.m
//  test
//
//  Created by sawadanx on 2013/11/17.
//  Copyright (c) 2013年 sawadanx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_rect;
    CGPoint _xy;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _rect = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [_rect setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_rect];
    _xy = CGPointMake(1, 2);
    [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(move) userInfo:Nil repeats:YES];
}

- (void)move
{
    CGPoint newCenter;
    newCenter.x = _rect.center.x + _xy.x;
    newCenter.y = _rect.center.y + _xy.y;
//    _rect.center = newCenter;
    
}
     
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
