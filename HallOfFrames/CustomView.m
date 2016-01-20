//
//  CustomView.m
//  HallOfFrames
//
//  Created by Chris Erdos on 1/20/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (IBAction)onColorButtonPress:(UIButton *)sender {
	[self.delegate customView:self addButton:sender];
}



@end
