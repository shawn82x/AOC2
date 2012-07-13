//
//  ViewController.m
//  project2_calculator
//
//  Created by Shawn Morgart on 7/10/12.
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
    if (onSwitch.on == true) 
    {
        UIButton *numClick = (UIButton*)sender;
        if (numClick != nil) 
        {
            if (numClick.tag == 0) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%0", calcNum.text];
            }
            else if (numClick.tag == 1) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%1", calcNum.text];
            }
            else if (numClick.tag == 2) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%2", calcNum.text];
            }
            else if (numClick.tag == 3) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%3", calcNum.text];
            }
            else if (numClick.tag == 4) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%4", calcNum.text];
            }
            else if (numClick.tag == 5) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%5", calcNum.text];
            }
            else if (numClick.tag == 6) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%6", calcNum.text];
            }
            else if (numClick.tag == 7) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%7", calcNum.text];
            }
            else if (numClick.tag == 8) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%8", calcNum.text];
            }
            else if (numClick.tag == 9) 
            {
                calcView.text = [[NSString alloc] initWithFormat:@"%9", calcNum.text];
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
    SecondViewController *infoView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (infoView != nil)
    {
        [self presentModalViewController:infoView animated:TRUE];
    }
}

-(IBAction)plusClick:(id)sender
{
    if (onSwitch.on == true)
    {
        c1 = [calcView.text intValue];
        calcView.text = @"";
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
        answ = c1 + [calcView.text intValue];
        calcView.text = [NSString stringWithFormat:@"%d", answ];
    }
    else if (onSwitch.on == false)
    {
        // Calculator is turned Off
    }
}

-(IBAction)colorClick:(id)sender
{
    UIButton *bgControl = (UIButton*)sender;
    if (bgControl != nil)
    {
        if (bgControl.tag == 12)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (bgControl.tag == 13)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (bgControl.tag == 14)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
}

-(IBAction)clearClick:(id)sender
{
    if (onSwitch.on == true) 
    {
        calcView.text = @"";
    }
    else if (onSwitch.on == false) 
    {
        calcView.text = @"";
    }
}

-(IBAction)moveSwitch:(id)sender
{
    UISwitch *flipSwitch = (UISwitch*)sender;
    if (flipSwitch != nil)
    {
        calcView.text = @"";
        c1 = 0;
    }
}


@end
