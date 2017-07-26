//
//  TableViewCell.m
//  ResponderChainTest
//
//  Created by 李少游 on 2017/7/26.
//  Copyright © 2017年 SheldonLi. All rights reserved.
//

#import "TableViewCell.h"
#import "UIResponder+Router.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)click:(id)sender {
    
    [self routerEventWithName:@"TableViewCellButtonClick" userInfo:@{@"line" : self.lineLabel.text}];
}

@end
