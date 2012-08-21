//  Created by Bradley J Grzesiak, Jeff Johnson & Greg Tarnoff on 8/20/12.
//  Copyright (c) 2012 NSCoder Madison. All rights reserved.

#import "NCMViewController.h"

@implementation NCMViewController
@synthesize bubble, centerBubble;

- (void)viewDidLoad {
  [super viewDidLoad];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientated:) name:@"orientation" object:nil];
}

- (void)viewWillAppear:(BOOL)animated {
  CGSize viewSize = self.view.frame.size;

  CGFloat width = viewSize.width;
  CGFloat height = viewSize.height;

  self.centerBubble.frame = CGRectMake(width/2.0 - 34.0f/2,
                                       height/2.0 - 34.0f/2,
                                       34.0f,
                                       34.0f);
  [super viewWillAppear:animated];
}

- (void)orientated:(NSNotification *) notifcation {
  CGSize viewSize = self.view.frame.size;

  CGFloat xx = [[notifcation.userInfo objectForKey:@"x"] floatValue];
  CGFloat yy = [[notifcation.userInfo objectForKey:@"y"] floatValue];

  self.bubble.frame = CGRectMake(viewSize.width/2.0 - 24.0f/2  - xx * 200,
                                 viewSize.height/2.0 - 24.0f/2 + yy * 280,
                                 24.0f, 24.0f);

}

- (void)viewDidUnload {
  [self setBubble:nil];
  [self setCenterBubble:nil];
  [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end