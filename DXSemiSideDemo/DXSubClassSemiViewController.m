//
//  DXSubClassSemiViewController.m
//  DXSemiSideDemo
//
//  Created by 谢 凯伟 on 13-7-7.
//  Copyright (c) 2013年 谢 凯伟. All rights reserved.
//

#import "DXSubClassSemiViewController.h"

@interface DXSubClassSemiViewController ()

@end

@implementation DXSubClassSemiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (id)init
{
    if (self = [super init]) {
        self.sideAnimationDuration = 0.6f;
        self.sideOffset = 100.0f;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contentView.alpha = 0.6f;
    self.contentView.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
