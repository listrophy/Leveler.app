//
//  NCMViewController.m
//  Leveler
//
//  Created by Bradley J Grzesiak on 8/20/12.
//  Copyright (c) 2012 NSCoder Madison. All rights reserved.
//

#import "NCMViewController.h"

@interface NCMViewController ()

@end

@implementation NCMViewController

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
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end
