//
//  ViewController.m
//  Project4b
//
//  Created by Shawn Morgart on 7/26/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set up default data
    NSUserDefaults *defaultData = [NSUserDefaults standardUserDefaults];
    if (defaultData != nil) {
        NSString *eventString = [defaultData objectForKey:@"events"];
        textView.text = eventString;
    }
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"All the events go here...";
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewWillAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    [super viewWillAppear:animated];
}

// Set up "onSwipe" function to change to second page upon a "right swipe"
- (void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) 
    {
        // set up action to change from main view to second view
        SecondViewController *secondPage = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        if (secondPage != nil)
        {
            secondPage.delegate = self;
            [self presentModalViewController:secondPage animated:TRUE];
        }

    }
    else 
    {
        // do nothing
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

//-(IBAction)mainClick:(id)sender
//{
    // set up action to change from main view to second view
//    SecondViewController *secondPage = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
//    if (secondPage != nil)
//    {
//        secondPage.delegate = self;
//        [self presentModalViewController:secondPage animated:TRUE];
//    }
//}

// return the text from text field in second view
-(void)DidClose:(NSString *)newEventString
{
    // check if any events are currently listed
    if ([textView.text isEqualToString:@"All the events go here..."])
    {
        // if now events, replace default text with new event
        textView.text = newEventString;
    }
    else {
        // if there are previous events, append the new event to the previous events
        eventText = textView.text;
        textView.text = [eventText stringByAppendingString:newEventString];
    }
}

-(IBAction)mainClick:(id)sender
{
    NSUserDefaults *defaultData = [NSUserDefaults standardUserDefaults];
    if (defaultData != nil) 
    {
        NSString *eventString = textView.text;
        [defaultData setObject:eventString forKey:@"events"];
        [defaultData synchronize];
    }
}

@end
