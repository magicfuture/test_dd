//
//  ViewController.h
//  swipeSide_menu
//
//  Created by DJ on 11/11/12.
//  Copyright (c) 2012 DJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>


@interface ViewController : UIViewController

{

     UIView * sideMenu;

}
@property(retain,nonatomic) UIView * sideMenu;


-(IBAction)pressSideMenu:(id)sender;

@end
