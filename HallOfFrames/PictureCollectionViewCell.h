//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Chris Erdos on 1/20/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureCollectionViewCell : UICollectionViewCell

@property UIImage *image;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property UIColor *frameColor;

@end
