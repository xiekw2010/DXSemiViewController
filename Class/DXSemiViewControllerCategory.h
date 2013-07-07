//
//  DXSemiViewControllerCategory.h
//  DXSemiSideDemo
//
//  Created by 谢 凯伟 on 13-7-7.
//  Copyright (c) 2013年 谢 凯伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DXSemiViewController;

@interface UIViewController (SemiViewController)

@property (nonatomic, strong) DXSemiViewController *leftSemiViewController;
@property (nonatomic, strong) DXSemiViewController *rightSemiViewController;


@end
