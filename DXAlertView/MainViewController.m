//
//  MainViewController.m
//  DXAlertView
//
//  Created by xiekw on 13-9-12.
//  Copyright (c) 2013年 xiekw. All rights reserved.
//

#import "MainViewController.h"
#import "DXAlertView.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Two button" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(twoBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    btn1.frame = CGRectMake(50, 50, 100, 50);
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"One button" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(OneBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    btn2.frame = CGRectMake(50, 200, 100, 50);
    [self.view addSubview:btn2];
}

- (void)twoBtnClicked:(id)sender
{
    DXAlertView *alert = [[DXAlertView alloc] initWithTitle:@"Congratulations" contentText:@"You have bought something" leftButtonTitle:@"Ok" rightButtonTitle:@"Fine"];
    [alert showAlert];
    alert.leftBlock = ^() {
        NSLog(@"left button clicked");
    };
    alert.rightBlock = ^() {
        NSLog(@"right button clicked");
    };
    alert.dismissBlock = ^() {
        NSLog(@"Do something interesting after dismiss block");
    };
}

- (void)OneBtnClicked:(id)sender
{
    DXAlertView *alert = [[DXAlertView alloc] initWithTitle:@"Congratulations" contentText:@"You have bought something" leftButtonTitle:nil rightButtonTitle:@"Fine"];
    [alert showAlert];
    alert.rightBlock = ^() {
        NSLog(@"right button clicked");
    };
    alert.dismissBlock = ^() {
        NSLog(@"Do something interesting after dismiss block");
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
