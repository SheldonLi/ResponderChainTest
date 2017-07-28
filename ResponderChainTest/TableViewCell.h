//
//  TableViewCell.h
//  ResponderChainTest
//
//  Created by 李少游 on 2017/7/26.
//  Copyright © 2017年 SheldonLi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChildView;

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lineLabel;
@property (weak, nonatomic) IBOutlet UIButton *cellButton;
@property (weak, nonatomic) IBOutlet ChildView *childView;

@end
