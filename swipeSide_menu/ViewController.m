//
//  ViewController.m
//  swipeSide_menu
//
//  Created by DJ on 11/11/12.
//  Copyright (c) 2012 DJ. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController


@synthesize sideMenu;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    sideMenu = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 254.5, 460)];
    
    [self.view sendSubviewToBack:sideMenu];

    //Raymond - Testing
    
    
}



-(void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    if ([animationID isEqualToString:@"slideMenu"]){
        UIView *sq = (UIView *) context;
        [sq removeFromSuperview];
        [sq release];
    }
}




-(IBAction)pressSideMenu:(id)sender
{

    CGRect destination = self.view.frame;
    
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector( animationDidStop:finished:context: )];
    [UIView beginAnimations:@"slideMenu" context:self.view];
    
    
    if (destination.origin.x > 0)
    {
        destination.origin.x = 0;
    } else
    {
        destination.origin.x += 254.5;
    }
    
    
    self.view.frame = destination;
    
    [UIView commitAnimations];

 /*   [UIView animateWithDuration:0.25 animations:^{
        self.view.frame = destination;
    } completion:^(BOOL finished) {
        self.view.userInteractionEnabled = !(destination.origin.x > 0);
    }];*/


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
