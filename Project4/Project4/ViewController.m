//
//  ViewController.m
//  Project4
//
//  Created by Shawn Morgart on 7/25/12.
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
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(IBAction)mainClick:(id)sender
{
    // set up action to change from main view to second view
    SecondViewController *secondPage = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (secondPage != nil)
    {
        secondPage.delegate = self;
        [self presentModalViewController:secondPage animated:TRUE];
    }
}

// return the text from text field in second view
-(void)DidClose:(NSString *)newEventString
{
    // check if any events are currently listed
    if ([textView.text isEqualToString:@"You have not saved any events."])
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

@end
