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
	
	UIColor *aColor;
	
	if ([sender.titleLabel.text isEqualToString:@"Red"]) {
		aColor = [UIColor redColor];
	} else if ([sender.titleLabel.text isEqualToString:@"White"]) {
		aColor = [UIColor whiteColor];
	} else {
		aColor = [UIColor blueColor];
	}
	
	[self.delegate customView:self clickedButton:aColor];

}



@end
