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
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSArray *pictureArray;
@property NSIndexPath *indexPath;
@property CustomView *xib;
@property NSMutableArray *backgroundColorArray;
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
	self.indexPath = [NSIndexPath new];
	[self.collectionView reloadData];
    
	self.backgroundColorArray = [NSMutableArray arrayWithObjects:	[UIColor clearColor],
																	[UIColor clearColor],
																	[UIColor clearColor],
																	[UIColor clearColor],
																	[UIColor clearColor],
																	[UIColor clearColor],
																					nil];
}

//Method that allows us to do things upon selection of a cell
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomView *view = [[CustomView alloc]init];
	self.xib = [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:view  options:nil] objectAtIndex:0];
	self.xib.delegate = self;
	[self.view addSubview:self.xib];
	self.indexPath = indexPath;
}


//Two Required methods for CollectionView (similar to tableView)
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
		cell.imageView.image = [self.pictureArray objectAtIndex:indexPath.row];
		cell.backgroundColor = [self.backgroundColorArray objectAtIndex:indexPath.row];
	return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return self.pictureArray.count;
}
//custom class delegate method
-(void)customView:(id)view clickedButton:(UIColor *)color {
	[self.backgroundColorArray replaceObjectAtIndex:self.indexPath.row withObject:color];
		[self.xib setHidden:YES];
	[self.collectionView reloadData];
}

@end
