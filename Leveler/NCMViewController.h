//
//  NCMViewController.h
//  Leveler
//
//  Created by Bradley J Grzesiak on 8/20/12.
//  Copyright (c) 2012 NSCoder Madison. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NCMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *x;
@property (weak, nonatomic) IBOutlet UILabel *y;
@property (weak, nonatomic) IBOutlet UILabel *z;
@property (weak, nonatomic) IBOutlet UIView *bubble;
@property (weak, nonatomic) IBOutlet UIView *centerBubble;

@end
