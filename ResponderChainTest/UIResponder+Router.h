//
//  UIResponder+Router.h
//  ResponderChainTest
//
//  Created by 李少游 on 2017/7/26.
//  Copyright © 2017年 SheldonLi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end
