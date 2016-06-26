//
//  ISMenuViewController.m
//  Fitness
//
//  Created by Yavor Krastev on 2/11/14.
//  Copyright (c) 2014 ISC. All rights reserved.
//

#import "ISMenuViewController.h"
#import "ISAppDelegate.h"
#import "ISSetWorkoutGoalViewController.h"
#import "macros.txt"
#import "ISHRMonitorViewController.h"

@interface ISMenuViewController ()

@end

@implementation ISMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    self.wantsFullScreenLayout=YES;
    
    UITapGestureRecognizer *tapOnWorkoutView = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(displayWorkoutGoals:)] ;
    tapOnWorkoutView.numberOfTapsRequired=1;
    [self.workoutGoalsView addGestureRecognizer:tapOnWorkoutView];
    
    
    
    UITapGestureRecognizer *tapOnHRView = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(displayHRMonitor:)] ;
    tapOnHRView.numberOfTapsRequired=1;
    [self.hrMonitorView addGestureRecognizer:tapOnHRView];
    
    
    // Do any additional setup after loading the view from its nib.
    
}



-(void) displayWorkoutGoals:(id)sender
{
    [[(ISAppDelegate *)[[UIApplication sharedApplication]delegate] drawerController] toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [(UINavigationController*)[(ISAppDelegate *)[[UIApplication sharedApplication]delegate] drawerController].centerViewController pushViewController:[[ISSetWorkoutGoalViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

-(void) displayHRMonitor:(id)sender
{
    [[(ISAppDelegate *)[[UIApplication sharedApplication]delegate] drawerController] toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [(UINavigationController*)[(ISAppDelegate *)[[UIApplication sharedApplication]delegate] drawerController].centerViewController pushViewController:[[ISHRMonitorViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
