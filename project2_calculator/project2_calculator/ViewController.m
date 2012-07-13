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
    if (onSwitch.on == true) {
        UIButton *numClick = (UIButton*)sender;
        if (numClick != nil) {
            if (numClick.tag == 0) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 1) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 2) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 3) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 4) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 5) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 6) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 7) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 8) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
            else if (numClick.tag == 9) {
                numInput.text = [[NSString alloc] initWithFormat:@"%@0", calcNum.text];
            }
        }
    }
    else if (onSwitch.on == false)
    {
        // Calculator is turned Off
    }
}

-(IBAction)infoClick:(id)sender
{
    
}

-(IBAction)plusClick:(id)sender
{
    if (onSwitch == true)
    {
        c1 = [calcNum.text intValue];
        calcNum.text = @"";
    }
    else if (onSwitch.on == false)
    {
        // Calculator is turned off
    }
}

-(IBAction)equalClick:(id)sender
{
    if (onSwitch.on == true)
    {
        answ = c1 + [calcNum.text intValue];
        calcNum.text = [NSString stringWithFormat:@"%d", answ];
    }
    else if (onSwitch.on == false)
    {
        // Calculator is turned Off
    }
}

-(IBAction)colorClick:(id)sender
{
    
}

-(IBAction)clearClick:(id)sender
{
    if (onSwitch.on == true) 
    {
        numInput.text = @"";
    }
    else if (onSwitch.on == false) 
    {
        // Calculator is turned Off
    }
}


@end
