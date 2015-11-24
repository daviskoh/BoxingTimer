//
//  RoundsCountView.m
//  BoxingTimer
//
//  Created by Davis Koh on 11/23/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "RoundsCountView.h"

@implementation RoundsCountView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        /**
         * IMPORTANT: This ensures no constraint will be created automatically for the view,
         * otherwise, any constraint you set is likely to conflict with autoresizing constraints
         */
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        self.backgroundColor = [UIColor grayColor];
        [self setupLabel];
    }
    
    return self;
}

- (void)setupLabel {
    self.label = [[UILabel alloc] init];
    [self.label setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.label.text = @"Rounds";
    self.label.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.label];

    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self.label
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:0.8
                                                                        constant:0];

    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self.label
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:0.2
                                                                        constant:0];

    NSLayoutConstraint *xConstraint = [NSLayoutConstraint constraintWithItem:self.label
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];

    NSLayoutConstraint *yConstraint = [NSLayoutConstraint constraintWithItem:self.label
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:0.4
                                                                        constant:0];
    
    [self addConstraints:@[widthConstraint, heightConstraint, xConstraint, yConstraint]];
}

@end
