//
//  DXSemiTableViewController.h
//  DXSemiSideDemo
//
//  Created by 谢 凯伟 on 13-7-8.
//  Copyright (c) 2013年 谢 凯伟. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DXSemiViewController.h"

@interface DXSemiTableViewController : DXSemiViewController<UITableViewDataSource, UITableViewDelegate>
{
    CGFloat _currentMaxDisplayedSection;
    CGFloat _currentMaxDisplayedCell;
}

@property (nonatomic, strong) UITableView *semiTableView;
@property (nonatomic, strong) UILabel *semiTitleLabel;
@property (nonatomic, strong) NSMutableArray *dateSourceArray;

@property (nonatomic, assign) CGFloat titleLabelHeight;
@property (nonatomic, assign) CGFloat cellAnimationDuration;
@property (nonatomic, assign) CGFloat tableViewRowHeight;

@end
