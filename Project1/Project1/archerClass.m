//
//  archerClass.m
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "archerClass.h"
#import "Warriors.h"

@implementation archerClass

-(id)init
{
    if (self = [super init])
    {
        warriorType = 2;
        warriorDmg = 2;
        warriorName = @"Archer";
        arrowsRemaining = 12;
    }
    return self;
}

-(int)getArrowsRemaining
{
    return arrowsRemaining;
}

@end
