//
//  CustomView.h
//  HallOfFrames
//
//  Created by Chris Erdos on 1/20/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@protocol CustomViewDelegate <NSObject>

-(void)customView:(id)view clickedButton:(UIColor *)color;

@end


@interface CustomView : UIView
@property (nonatomic, assign) id <CustomViewDelegate> delegate;
@property UIColor *passThroughColor;


@end
