//
//  ActivityFeedbackViewModel.h
//  ActiveFeedbackTest
//
//  Created by 左恒松 on 2017/2/20.
//  Copyright © 2017年 左恒松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActivityFeedbackViewModel : NSObject

@property (nonatomic, strong) NSString *commentText;

@property (nonatomic, strong) RACSubject *successSubject;
@property (nonatomic, strong) RACSubject *failureSubject;
@property (nonatomic, strong) RACSubject *errorSubject;

- (RACSignal *)validSignal;

// 提交反馈
- (void)submitComment;


@end
