//
//  ActivityViewController.m
//  ActiveFeedbackTest
//
//  Created by 左恒松 on 2017/2/20.
//  Copyright © 2017年 左恒松. All rights reserved.
//
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHight [UIScreen mainScreen].bounds.size.height


#import "ActivityViewController.h"
#import "ActivityFeedbackView.h"

@interface ActivityViewController () {
    ActivityFeedbackView *_feedbackView;
}

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.bounds = CGRectMake(0, 0, 50, 50);
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    
    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    shareBtn.frame = CGRectMake(0, 0, 50, 50);
    [shareBtn setTitle:@"分享" forState:UIControlStateNormal];
    [shareBtn addTarget:self action:@selector(share) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *RightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:shareBtn];
    self.navigationItem.rightBarButtonItem = RightBarButtonItem;
    
    
    
}

- (void)back {
//    if (!_feedbackView) {
//        _feedbackView = [[[NSBundle mainBundle] loadNibNamed:@"ActivityFeedbackView" owner:self options:nil] lastObject];
//        _feedbackView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHight);
//    }
//    ActivityFeedbackView *feedbackView = _feedbackView;
//    [feedbackView reloadWithData:nil];

    [self.navigationController popViewControllerAnimated:YES];
}

- (void)share {
    
    NSLog(@"分享");
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
