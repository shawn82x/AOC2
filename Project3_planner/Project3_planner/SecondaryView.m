//
//  SecondaryView.m
//  Project3_planner
//
//  Created by Shawn Morgart on 7/18/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "SecondaryView.h"

@interface SecondaryView ()

@end

@implementation SecondaryView

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Close keyboard

-(IBAction)closeKeyboard:(id)sender
{
    [newEvent resignFirstResponder];
}

// Close the SecondaryView and save/route data to UITextField on Main View

-(IBAction)saveClick:(id)sender
{
    datePicker.minimumDate = [NSDate date];
    NSDate *chosenDate = [datePicker date];
    if (chosenDate != nil)
    {
        NSDateFormatter *dFormat = [[NSDateFormatter alloc] init];
        if (dFormat != nil)
        {
            [dFormat setDateFormat:@"MMM dd, YYYY hh:mm aaa"];
            NSString *setDate = [[NSString alloc] initWithFormat:@"%@", [dFormat stringFromDate:chosenDate]];
            setDate = newEventDate;
        }
    }
    
    // newEventText and date/time from the picker are appended for transfer to Main View.
    
    [self dismissModalViewControllerAnimated:TRUE];
    if (delegate != nil)
    {
        newEventText = [NSString stringWithFormat:@"%@ \n%@ \n", newEvent.text, newEventDate];
    }
}

#pragma mark - view lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




@end
