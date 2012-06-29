//
//  knightClass.m
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "knightClass.h"
#import "Warriors.h"

@implementation knightClass

-(id)init
{
    if(self = [super init])
    {
        warriorType = 0;
        warriorDmg = 8;
        warriorName = @"Knight";
        warriorArmor = @"Plate Mail";
    }
    return self;
}

-(NSString*)getWarriorArmor
{
    return warriorArmor;
}

@end
