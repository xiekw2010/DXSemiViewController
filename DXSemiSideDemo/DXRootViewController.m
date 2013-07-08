//
//  DXRootViewController.m
//  DXSemiSideDemo
//
//  Created by 谢 凯伟 on 13-7-7.
//  Copyright (c) 2013年 谢 凯伟. All rights reserved.
//

#import "DXRootViewController.h"
#import "DXSemiViewControllerCategory.h"
#import "DXSubClassSemiViewController.h"
#import "DXSubclassSemiTableViewController.h"

@interface DXRootViewController ()

@end

@implementation DXRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setTitle:@"ShowLeft" forState:UIControlStateNormal];
    [leftBtn setBackgroundColor:[UIColor redColor]];
    leftBtn.frame = CGRectMake((CGRectGetWidth(self.view.bounds) - 200) * 0.5, 20, 200, 50);
    [self.view addSubview:leftBtn];
    [leftBtn addTarget:self action:@selector(showLeftSemi:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightBtn setTitle:@"ShowRight" forState:UIControlStateNormal];
    [rightBtn setBackgroundColor:[UIColor redColor]];
    rightBtn.frame = CGRectMake(CGRectGetMinX(leftBtn.frame), 90, 200, 50);
    [self.view addSubview:rightBtn];
    [rightBtn addTarget:self action:@selector(showRightSemi:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *leftTable = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftTable setTitle:@"ShowLeftTableSemi" forState:UIControlStateNormal];
    [leftTable setBackgroundColor:[UIColor redColor]];
    leftTable.frame = CGRectMake(CGRectGetMinX(leftBtn.frame), 160, 200, 50);
    [self.view addSubview:leftTable];
    [leftTable addTarget:self action:@selector(showLeftTableSemi:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *rightTable = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightTable setTitle:@"ShowLeftTableSemi" forState:UIControlStateNormal];
    [rightTable setBackgroundColor:[UIColor redColor]];
    rightTable.frame = CGRectMake(CGRectGetMinX(leftBtn.frame), 230, 200, 50);
    [self.view addSubview:rightTable];
    [rightTable addTarget:self action:@selector(showrightTableSemi:) forControlEvents:UIControlEventTouchUpInside];
    
    leftBtn.autoresizingMask = rightBtn.autoresizingMask = leftTable.autoresizingMask = rightTable.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin;
}

- (void)showLeftSemi:(id)sender
{
    DXSubClassSemiViewController *semiLeft = [[DXSubClassSemiViewController alloc] init];
    self.leftSemiViewController = semiLeft;
}

- (void)showRightSemi:(id)sender
{
    DXSubClassSemiViewController *semiRight = [[DXSubClassSemiViewController alloc] init];
    self.rightSemiViewController = semiRight;
}

- (void)showLeftTableSemi:(id)sender
{
    DXSubclassSemiTableViewController *semiLeft = [[DXSubclassSemiTableViewController alloc] init];
    semiLeft.semiTitleLabel.text = @"SemiLeftTableView";
    semiLeft.tableViewRowHeight = 80.0f;
    self.leftSemiViewController = semiLeft;
}

- (void)showrightTableSemi:(id)sender
{
    DXSubclassSemiTableViewController *semiRight = [[DXSubclassSemiTableViewController alloc] init];
    semiRight.semiTitleLabel.text = @"SemiRightTableView";
    self.rightSemiViewController = semiRight;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
