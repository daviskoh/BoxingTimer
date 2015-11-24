//
//  Label.m
//  BoxingTimer
//
//  Created by Davis Koh on 11/24/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

#import "Label.h"

@implementation Label

- (id)initWithText:(NSString *)text {
    self = [super init];
    
    if (self) {
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        self.text = text;
        self.textAlignment = NSTextAlignmentCenter;
    }
    
    return self;
}

@end
