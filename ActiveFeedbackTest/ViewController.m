//
//  ViewController.m
//  ActiveFeedbackTest
//
//  Created by 左恒松 on 2017/2/20.
//  Copyright © 2017年 左恒松. All rights reserved.
//

#import "ViewController.h"
#import "ActivityViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)gotoActivity:(id)sender {
    ActivityViewController *activityVC = [[ActivityViewController alloc] init];
    [self.navigationController pushViewController:activityVC animated:YES];
    activityVC.view.backgroundColor = [UIColor whiteColor];    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
