//
//  NTGridViewCell.h
//  gridViewNibTest
//
//  Created by Evadne Wu on 7/26/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "AQGridViewCell.h"

@interface NTGridViewCell : AQGridViewCell

+ (id) cellFromNib;

@property (nonatomic, readonly, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) IBOutlet UIView *backgroundView;
@property (nonatomic, retain) IBOutlet UIView *selectedBackgroundView;
@property (nonatomic, copy) NSString *reuseIdentifier;

@end
