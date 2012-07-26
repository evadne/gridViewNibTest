//
//  NTGridViewCell.m
//  gridViewNibTest
//
//  Created by Evadne Wu on 7/26/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "NTGridViewCell.h"

@implementation NTGridViewCell
@dynamic contentView;
@dynamic backgroundView;
@dynamic selectedBackgroundView;
@dynamic reuseIdentifier;

+ (id) cellFromNib {

	static UINib *nib = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		nib = [UINib nibWithNibName:NSStringFromClass([self class])  bundle:nil];
	});
	
	NSArray *objects = [nib instantiateWithOwner:nil options:nil];
	
	for (NTGridViewCell *cell in objects)
		if ([cell isKindOfClass:[NTGridViewCell class]])
			return cell;
	
	return nil;

}

@end
