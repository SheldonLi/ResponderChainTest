//
//  TableViewCell.m
//  ResponderChainTest
//
//  Created by 李少游 on 2017/7/26.
//  Copyright © 2017年 SheldonLi. All rights reserved.
//

#import "TableViewCell.h"
#import "UIResponder+Router.h"
#import "ChildView.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)topButtonClick:(id)sender {
    
    [self routerEventWithName:@"TableViewCellButtonClick" userInfo:@{@"line" : self.lineLabel.text}];
}

- (IBAction)middleButtonClick:(id)sender {
    [self routerEventWithName:@"MiddleButtonClick" userInfo:@{@"line" : self.lineLabel.text}];
    
}


- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    
    NSMutableDictionary *decoratedUserInfo = [[NSMutableDictionary alloc] initWithDictionary:userInfo];
    decoratedUserInfo[@"newParam"] = self.lineLabel.text; // 添加数据
    [super routerEventWithName:eventName userInfo:decoratedUserInfo]; // 往上继续传递
}


@end
