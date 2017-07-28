//
//  ChildView.m
//  ResponderChainTest
//
//  Created by 李少游 on 2017/7/28.
//  Copyright © 2017年 SheldonLi. All rights reserved.
//

#import "ChildView.h"
#import "UIResponder+Router.h"

@implementation ChildView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self customInit];
    }
    return self;
}

- (void)customInit {
    self.backgroundColor = [UIColor cyanColor];
    
    [self addSubview:self.childViewLable];
    [self addSubview:self.childViewButton];
}


- (void)buttonClick:(id)sender {
    
    [self routerEventWithName:@"ChildCellButtonClick" userInfo:@{@"childViewLable" : self.childViewLable.text}];
}


- (UILabel *)childViewLable {
    if (!_childViewLable) {
        _childViewLable = [[UILabel alloc] init];
        _childViewLable.frame = CGRectMake(20, 20, 160, 44);
        
        _childViewLable.text = [NSString stringWithFormat:@"random-%08X", arc4random()];
    }
    return _childViewLable;
}

- (UIButton *)childViewButton {
    if (!_childViewButton) {
        _childViewButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        _childViewButton.frame = CGRectMake(220, 20, 100, 44);
        
        [_childViewButton setTitle:@"childButton" forState:UIControlStateNormal];
        
        [_childViewButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _childViewButton;
}

@end
