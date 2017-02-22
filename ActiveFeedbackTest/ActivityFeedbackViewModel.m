//
//  ActivityFeedbackViewModel.m
//  ActiveFeedbackTest
//
//  Created by 左恒松 on 2017/2/20.
//  Copyright © 2017年 左恒松. All rights reserved.
//

#import "ActivityFeedbackViewModel.h"

@interface ActivityFeedbackViewModel ()

@property (nonatomic, strong) RACSignal *commentTextSignal;

@property (nonatomic, strong) NSDictionary *requestData;

@end


@implementation ActivityFeedbackViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _commentTextSignal = RACObserve(self, commentText);
        
        _successSubject = [RACSubject subject];
        _failureSubject = [RACSubject subject];
        _errorSubject = [RACSubject subject];
    }
    return self;
}

- (RACSignal *)validSignal {
    RACSignal *validSignal = [RACSignal combineLatest:@[_commentTextSignal] reduce:^id(NSString *commentText){
        return @(commentText.length>5);
    }];
    return validSignal;
}


- (void)submitComment {
    
    _requestData = @{@"comment":self.commentText};
    
    [_successSubject sendNext:_requestData];
    
}




@end
