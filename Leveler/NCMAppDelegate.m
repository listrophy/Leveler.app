//  Created by Bradley J Grzesiak, Jeff Johnson & Greg Tarnoff on 8/20/12.
//  Copyright (c) 2012 NSCoder Madison. All rights reserved.

#import "NCMAppDelegate.h"

@implementation NCMAppDelegate
@synthesize accels;

- (void)applicationDidBecomeActive:(UIApplication *)application {
  self.accels = [NSMutableArray array];

  UIAccelerometer *theAccelerometer = [UIAccelerometer sharedAccelerometer];
  theAccelerometer.updateInterval = 1.0f / 20.0f;

  theAccelerometer.delegate = self;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
  NSNumber *x, *y;
  x = [NSNumber numberWithFloat:acceleration.x];
  y = [NSNumber numberWithFloat:acceleration.y];

  [self.accels addObject:@[x, y]];
  if (self.accels.count > 7)
    [self.accels removeObjectAtIndex:0];

  [[NSNotificationCenter defaultCenter] postNotificationName:@"orientation" object:nil userInfo:[self averagedAccels]];
}

- (NSDictionary *)averagedAccels {
  CGFloat x, y;
  for (NSArray *xy in self.accels) {
    x += [[xy objectAtIndex:0] floatValue];
    y += [[xy objectAtIndex:1] floatValue];
  }

  return @{@"x": [NSNumber numberWithFloat:x / self.accels.count], @"y": [NSNumber numberWithFloat:y / self.accels.count]};
}

- (void)applicationWillResignActive:(UIApplication *)application {
  [UIAccelerometer sharedAccelerometer].delegate = nil;
}

@end