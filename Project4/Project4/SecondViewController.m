//
//  SecondViewController.m
//  Project4
//
//  Created by Shawn Morgart on 7/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    // set up Swipe recognition
    leftSwiper2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe2:)];
    leftSwiper2.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel2 addGestureRecognizer:leftSwiper2];
    
    rightSwiper2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe2:)];
    rightSwiper2.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel2 addGestureRecognizer:rightSwiper2];
    
    [super viewWillAppear:animated];
}

-(void)onSwipe2:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        thisEvent = textField.text;
        thisEventDate = [[NSString alloc] initWithFormat:@"%@ \n %@ \n", thisEvent, thisDate];
        [delegate DidClose:thisEventDate];
        [self dismissModalViewControllerAnimated:TRUE];
    }
    else if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        
    }
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

// close the keyboard after it has been opened by the text field
-(IBAction)keyClose:(id)sender
{
    [textField resignFirstResponder];
}

// set minimum date to today and save the date as a variable
-(IBAction)DateChange:(id)sender
{
    UIDatePicker *datePicker = (UIDatePicker*)sender;
    if (datePicker != nil)
    {
        datePicker.minimumDate = [NSDate date];
        NSDate *currentDate = datePicker.date;
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat != nil)
        {
            [dateFormat setDateFormat:@"MMM d, yyyy hh:mm aaa"];
            NSString *eventDate = [[NSString alloc] initWithFormat:@"%@", [dateFormat stringFromDate:currentDate]];
            thisDate = eventDate;
        }
    }
}

-(IBAction)saveClick:(id)sender
{
    thisEvent = textField.text;
    thisEventDate = [[NSString alloc] initWithFormat:@"%@ \n %@ \n", thisEvent, thisDate];
    [delegate DidClose:thisEventDate];
    [self dismissModalViewControllerAnimated:TRUE];
}

@end
