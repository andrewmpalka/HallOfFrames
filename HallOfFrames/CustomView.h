//
//  CustomView.h
//  HallOfFrames
//
//  Created by Chris Erdos on 1/20/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

-(void)customView:(id)view clickedButton:(UIButton *)button;

@end


@interface CustomView : UIView
@property (nonatomic, assign) id <CustomViewDelegate> delegate;


@end
