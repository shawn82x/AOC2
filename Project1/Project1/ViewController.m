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
        warriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 320, 50)];
        warriorLabel.text = [NSString stringWithFormat:@"The %@ has a Damage Rating of %d.", [myKnightClass getWarriorName], [myKnightClass getWarriorDmg]];
        warriorLabel.textColor = [UIColor redColor];
        [self.view addSubview:warriorLabel];
        
        warriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, 320, 50)];
        warriorLabel.text = [NSString stringWithFormat:@"The %@ wears %@ armor.", [myKnightClass getWarriorName], [myKnightClass getWarriorArmor]];
        warriorLabel.textColor = [UIColor redColor];
        [self.view addSubview:warriorLabel];
    }
    
    spearClass *mySpearClass = [[spearClass alloc] init];
    if (mySpearClass != nil)
    {
        warriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 320, 40)];
        warriorLabel.text = [NSString stringWithFormat:@"The %@ has a Damage Rating of %d.", [mySpearClass getWarriorName], [mySpearClass getWarriorDmg]];
        warriorLabel.textColor = [UIColor blueColor];
        [self.view addSubview:warriorLabel];
        
        warriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 160, 320, 40)];
        warriorLabel.text = [NSString stringWithFormat:@"The %@ is %@.", [mySpearClass getWarriorName], [mySpearClass getWarriorWounds]];
        warriorLabel.textColor = [UIColor blueColor];
        [self.view addSubview:warriorLabel];
    }
    
    archerClass *myArcherClass = [[archerClass alloc] init];
    if (myArcherClass != nil)
    {
        warriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 210, 320, 40)];
        warriorLabel.text = [NSString stringWithFormat:@"The %@ has a Damage Rating of %d.", [myArcherClass getWarriorName], [myArcherClass getWarriorDmg]];
        warriorLabel.textColor = [UIColor greenColor];
        [self.view addSubview:warriorLabel];
        
        warriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 260, 320, 40)];
        warriorLabel.text = [NSString stringWithFormat:@"The %@ has %d arrows remaining.", [myArcherClass getWarriorName], [myArcherClass getArrowsRemaining]];
        warriorLabel.textColor = [UIColor greenColor];
        [self.view addSubview:warriorLabel];
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
