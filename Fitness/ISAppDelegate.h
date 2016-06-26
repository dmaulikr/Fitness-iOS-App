//
//  ISAppDelegate.h
//  Fitness
//
//  Created by Yavor Krastev on 2/6/14.
//  Copyright (c) 2014 ISC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMDrawerController.h"

@interface ISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property MMDrawerController *drawerController;
@end