//
//  RoundsCountView.m
//  BoxingTimer
//
//  Created by Davis Koh on 11/23/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "RoundsCountView.h"
#import "Label.h"

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
    self.titleLabel = [[Label alloc] initWithText:@"Rounds"];
    [self addSubview:self.titleLabel];

    NSLayoutConstraint *titleWidthConstraint = [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:0.8
                                                                        constant:0];

    NSLayoutConstraint *titleHeightConstraint = [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:0.2
                                                                        constant:0];

    NSLayoutConstraint *titleXConstraint = [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];

    NSLayoutConstraint *titleYConstraint = [NSLayoutConstraint constraintWithItem:self.titleLabel
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:0.4
                                                                        constant:0];
    
    [self addConstraints:@[titleWidthConstraint, titleHeightConstraint, titleXConstraint, titleYConstraint]];

    self.quantityLabel = [[Label alloc] initWithText:@"06"];
    [self addSubview:self.quantityLabel];

    NSLayoutConstraint *quantityWidthConstraint = [NSLayoutConstraint constraintWithItem:self.quantityLabel
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:0.8
                                                                        constant:0];

    NSLayoutConstraint *quantityHeightConstraint = [NSLayoutConstraint constraintWithItem:self.quantityLabel
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:0.6
                                                                        constant:0];

    NSLayoutConstraint *quantityXConstraint = [NSLayoutConstraint constraintWithItem:self.quantityLabel
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];

    NSLayoutConstraint *quantityYConstraint = [NSLayoutConstraint constraintWithItem:self.quantityLabel
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:1
                                                                        constant:0];
    
    [self addConstraints:@[quantityWidthConstraint, quantityHeightConstraint, quantityXConstraint, quantityYConstraint]];
}

@end
