//
//  NTViewController.m
//  gridViewNibTest
//
//  Created by Evadne Wu on 7/26/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "NTViewController.h"
#import "NTGridViewCell.h"


@interface NTViewController ()
@property (nonatomic, readonly, strong) AQGridView *gridView;
@end


@implementation NTViewController

- (AQGridView *) gridView {

	if (![self isViewLoaded])
		return nil;
	
	AQGridView * const gv = (AQGridView *)self.view;
	NSCParameterAssert([gv isKindOfClass:[AQGridView class]]);
	
	return gv;

}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	
}

- (void) viewDidLoad {

	[super viewDidLoad];
	
	[self.gridView reloadData];

}

- (NSUInteger) numberOfItemsInGridView: (AQGridView *) gridView {

	return 1000;

}

- (AQGridViewCell *) gridView:(AQGridView *)gridView cellForItemAtIndex:(NSUInteger)index {

	static NSString * const identifier = @"Cell";
	NTGridViewCell *cell = (NTGridViewCell *)[gridView dequeueReusableCellWithIdentifier:identifier];
	
	if (cell)
		NSCParameterAssert([cell isKindOfClass:[NTGridViewCell class]]);
	
	if (!cell) {
	
		CGRect cellFrame = (CGRect){
			CGPointZero,
			gridView.gridCellSize
		};
		
		cell = [NTGridViewCell cellFromNib];
		cell.reuseIdentifier = identifier;
		cell.frame = cellFrame;
		
		//	cell = [[AQGridViewCell alloc] initWithFrame:cellFrame reuseIdentifier:identifier];
		//	cell.contentView.backgroundColor = [UIColor redColor];
	
	}

	return cell;

}

@end
