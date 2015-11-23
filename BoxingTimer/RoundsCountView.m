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
    }
    
    return self;
}

@end
