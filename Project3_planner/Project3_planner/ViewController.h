//
//  ViewController.h
//  Project3_planner
//
//  Created by Shawn Morgart on 7/18/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondaryView.h"

@interface ViewController : UIViewController <eventDelegate>
{
    @public
    IBOutlet UITextView *eventView;
    NSString *addNewEvent;
}

-(IBAction)eventInfo:(id)sender;
-(IBAction)mainClick:(id)sender;
-(void)newEvent:(NSString *) addNewEvent;

@end
