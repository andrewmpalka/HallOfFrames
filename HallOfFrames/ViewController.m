//
//  ViewController.m
//  HallOfFrames
//
//  Created by Andrew Palka on 1/20/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate>
@property NSArray *pictureArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.pictureArray = [NSArray arrayWithObjects:
													[UIImage imageNamed:@"1"],
													[UIImage imageNamed:@"2"],
													[UIImage imageNamed:@"3"],
													[UIImage imageNamed:@"4"],
													[UIImage imageNamed:@"5"],
													[UIImage imageNamed:@"6"],
																		 nil];
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomView *view = [[CustomView alloc]init];

[[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:view  options:nil] objectAtIndex:indexPath.row];
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
	cell.imageView.image = [self.pictureArray objectAtIndex:indexPath.row];
	
	
	return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return self.pictureArray.count;
}

-(void)customView:(id)view clickedButton:(UIButton *)button {
        NSLog(@"Passed thru VC.m");
}

@end
