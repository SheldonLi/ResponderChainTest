//
//  ViewController.m
//  ResponderChainTest
//
//  Created by 李少游 on 2017/7/26.
//  Copyright © 2017年 SheldonLi. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *mainTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.mainTableView];
    
    
}

#pragma mark - event response
- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    
    /*
     do things you want
     */
    self.navigationItem.title = [NSString stringWithFormat:@"%@", userInfo[@"line"]];
    
    
    
    // 如果需要让事件继续往上传递，则调用下面的语句
    // [super routerEventWithName:eventName userInfo:userInfo];
}


#pragma mark - TableView Delegate & DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    cell.lineLabel.text = [NSString stringWithFormat:@"line----%zd", indexPath.row];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    self.navigationItem.title = [NSString stringWithFormat:@"cell--%zd", indexPath.row];
    
}


- (UITableView *)mainTableView {
    if (!_mainTableView) {
        
        _mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTableView.delegate = self;
        _mainTableView.dataSource = self;
        
        [_mainTableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    }
    return _mainTableView;
}

@end
