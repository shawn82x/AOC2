//
//  ViewController.h
//  project2_calculator
//
//  Created by Shawn Morgart on 7/10/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UISwitch *onSwitch;
}

-(IBAction)onClick:(id)sender;

-(IBAction)infoClick:(id)sender;

-(IBAction)plusClick:(id)sender;

-(IBAction)equalClick:(id)sender;

-(IBAction)colorClick:(id)sender;

-(IBAction)clearClick:(id)sender;

-(IBAction)onSwitched:(id)sender;

@end
