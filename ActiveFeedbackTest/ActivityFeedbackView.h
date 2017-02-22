//
//  ActivityFeedbackView.h
//  ActiveFeedbackTest
//
//  Created by 左恒松 on 2017/2/20.
//  Copyright © 2017年 左恒松. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActivityFeedbackViewModel.h"

@interface ActivityFeedbackView : UIView

@property (nonatomic, strong) ActivityFeedbackViewModel *feedbackModel;

@property (weak, nonatomic) IBOutlet UIView *starView;

@property (weak, nonatomic) IBOutlet UIButton *feedbackButton;


@property (weak, nonatomic) IBOutlet UIView *tagView;

@property (weak, nonatomic) IBOutlet UITextView *commentTextView;


- (void)reloadWithData:(NSDictionary *)dic;

@end
