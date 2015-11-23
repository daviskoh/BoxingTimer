//
//  SetterViewController.m
//  BoxingTimer
//
//  Created by Davis Koh on 11/22/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "SetterViewController.h"
#import "SetterView.h"

@interface SetterViewController ()

@end

@implementation SetterViewController

- (void)loadView {
    self.view = [[SetterView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
