//
//  ViewController.h
//  Project4
//
//  Created by Shawn Morgart on 7/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>
{
    @public
    IBOutlet UITextView *textView;
    NSString *event;
    // NSString *newEventString;
    NSString *eventText;
    
    // set up for Swipe 
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *leftSwiper;
    UISwipeGestureRecognizer *rightSwiper;
    
    
}

// Set up for button to change to SecondView
-(IBAction)mainClick:(id)sender;

@end
