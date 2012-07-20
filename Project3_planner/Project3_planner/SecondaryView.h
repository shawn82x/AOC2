//
//  SecondaryView.h
//  Project3_planner
//
//  Created by Shawn Morgart on 7/18/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

// create delegate to move events to Main View
@protocol eventDelegate <NSObject>

-(void)saveEvent:(NSString*)eventString;

@end

@interface SecondaryView : UIViewController
{
    @public
    IBOutlet UITextField *newEvent;
    IBOutlet UIDatePicker *datePicker;
    
    NSString *newEventText;
    NSString *newEventDate;
    NSString *comboString;
    
    id <eventDelegate> delegate;
}

@property (strong) id<eventDelegate> delegate;

// Save data and Close SecondaryView.
-(IBAction)saveClick:(id)sender;

// Close the Keyboard
-(IBAction)closeKeyboard:(id)sender;

@end
