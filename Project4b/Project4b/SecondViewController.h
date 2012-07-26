//
//  SecondViewController.h
//  Project4b
//
//  Created by Shawn Morgart on 7/26/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

// create delegate so events can be passed from second view to main view
@protocol SecondViewControllerDelegate <NSObject>

-(void)DidClose:(NSString*)newEventString;

@end

@interface SecondViewController : UIViewController
{
@public
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicked;
    
    NSString *thisDate;
    NSString *thisEvent;
    NSString *thisEventDate;
    
    IBOutlet UILabel *swipeLabel2;
    UISwipeGestureRecognizer *leftSwiper;
    
    id<SecondViewControllerDelegate> delegate;
}

@property (strong) id<SecondViewControllerDelegate> delegate;

-(IBAction)DateChange:(id)sender;
-(IBAction)saveClick:(id)sender;
-(IBAction)keyClose:(id)sender;

@end
