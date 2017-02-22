//
//  ActivityFeedbackView.m
//  ActiveFeedbackTest
//
//  Created by 左恒松 on 2017/2/20.
//  Copyright © 2017年 左恒松. All rights reserved.
//

#import "ActivityFeedbackView.h"

@implementation ActivityFeedbackView

- (void)reloadWithData:(NSDictionary *)dic {
    [[[UIApplication sharedApplication] keyWindow] addSubview:self];
    
    self.feedbackModel = [[ActivityFeedbackViewModel alloc] init];
    RAC(self.feedbackModel, commentText) = self.commentTextView.rac_textSignal;
    
    RACSignal *validSignal = [self.feedbackModel validSignal];
    RAC(self.feedbackButton, enabled) = validSignal;
    
    @weakify(self);
    [self.feedbackModel.successSubject subscribeNext:^(id x) {
        NSDictionary *dic = (NSDictionary *)x;
        NSLog(@"%@",dic.allValues);
        
    }];
    
    [[self.feedbackButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        @strongify(self);
        [self.feedbackModel submitComment];
    }];
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
