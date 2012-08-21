//
//  NCMAppDelegate.h
//  Leveler
//
//  Created by Bradley J Grzesiak on 8/20/12.
//  Copyright (c) 2012 NSCoder Madison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface NCMAppDelegate : UIResponder <UIApplicationDelegate, UIAccelerometerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *accels;

@end
