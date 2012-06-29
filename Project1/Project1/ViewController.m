//
//  ViewController.m
//  Project1
//
//  Created by Shawn Morgart on 6/26/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"
#import "Warriors.h"
#import "knightClass.h"
#import "spearClass.h"
#import "archerClass.h"
#import "warriorFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    knightClass *myKnightClass = [[knightClass alloc] init];
    if (myKnightClass != nil)
    {
        warriorInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
        warriorInfoLabel.text = [NSString stringWithFormat:@"%@ has a value of %d.", [myKnightClass getName], [myKnightClass getValue]];
        [self.view addSubview:knightLabel];
        
        warriorInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 320, 50)];
        warriorInfoLabel.text = [NSString stringWithFormat:@"The %@ is %@.", [myKnightClass getName], [myKnightClass getGemColor]];
        [self.view addSubview:warriorInfoLabel];
    }
    
    spearClass *mySpearClass = [[spearClass alloc] init];
    if (mySpearClass != nil)
    {
        warriorInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 320, 50)];
        warriorInfoLabel.text = [NSString stringWithFormat:@"%@ has a value of %d.", [mySpearClass getName], [mySpearClass getGemValue]];
        [self.view addSubview:gemInfoLabel];
        
        warriorInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 320, 50)];
        warriorInfoLabel.text = [NSString stringWithFormat:@"The %@ is %@.", [mySpearClass getName], [mySpearClass getGemDamage]];
        [self.view addSubview:warriorInfoLabel];
    }
    
    archerClass *myArcherClass = [[archerClass alloc] init];
    if (myArcherClass != nil)
    {
        warriorInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 50)];
        warriorInfoLabel.text = [NSString stringWithFormat:@"%@ has a value of %d.", [myArcherClass getName], [myArcherClass getGemValue]];
        [self.view addSubview:warriorInfoLabel];
        
        warriorInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, 320, 50)];
        warriorInfoLabel.text = [NSString stringWithFormat:@"The %@ has %d cuts.", [myArcherClass getName], [myArcherClass getGemCuts]];
        [self.view addSubview:warriorInfoLabel];
    }
    
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

@end
