//
//  ViewController.m
//  project2_calculator
//
//  Created by Shawn Morgart on 7/10/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set default background color to "white"
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Set on/off switch default to "Off"
    onSwitch.on = false;
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

-(IBAction)onClick:(id)sender
{
    
}

-(IBAction)infoClick:(id)sender
{
    
}

-(IBAction)plusClick:(id)sender
{
    
}

-(IBAction)equalClick:(id)sender
{
    
}

-(IBAction)colorClick:(id)sender
{
    
}

-(IBAction)clearClick:(id)sender
{
    
}

-(IBAction)onSwitched:(id)sender
{
    UISwitch *on_offSwitch = (UISwitch*)sender;
    if (on_offSwitch != nil)
    {
        int tag = on_offSwitch.tag;
    }
}

@end
