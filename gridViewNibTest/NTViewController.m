//
//  NTViewController.m
//  gridViewNibTest
//
//  Created by Evadne Wu on 7/26/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "NTViewController.h"

@interface NTViewController ()

@end

@implementation NTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
