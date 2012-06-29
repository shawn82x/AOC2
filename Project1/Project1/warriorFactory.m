//
//  warriorFactory.m
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "warriorFactory.h"

#import "Warriors.h"
#import "knightClass.h"
#import "spearClass.h"
#import "archerClass.h"

@implementation warriorFactory

-(Warriors*)getWarrior:(int)warriorType
{
    if (warriorType == 0)
    {
        return [[knightClass alloc] init];
    }
    else if (warriorType == 1)
    {
        return [[spearClass alloc] init]; 
    }
    else if (warriorType == 2)
    {
        return [[archerClass alloc] init];
    }
    else
    {
        return nil;   
    }
}

@end
