//
//  SetterView.m
//  BoxingTimer
//
//  Created by Davis Koh on 11/22/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "SetterView.h"
#import "RoundsCountView.h"

@implementation SetterView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    if (self) {
        self.roundsCountView = [[RoundsCountView alloc] init];
        [self addSubview:self.roundsCountView];
        [self setupConstraints];
    }
    
    return self;
}

- (void)setupConstraints {
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self.roundsCountView
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:0.5
                                                                        constant:0];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self.roundsCountView
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self
                                                                        attribute:NSLayoutAttributeHeight
                                                                       multiplier:0.3
                                                                         constant:0];

    [self addConstraints:@[
                           widthConstraint,
                           heightConstraint
                           ]];
}

@end
