//
//  Warriors.m
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "Warriors.h"

@implementation Warriors

-(id)init
{
    if (self = [super init])
    {
        warriorType = 0;
        warriorDmg = 0;
        warriorName = @"Warrior Name";
    }
    return self;
}

-(NSString*)getWarriorName
{
    return warriorName;
}

-(int)getWarriorDmg
{
    return warriorDmg;
}

-(void)setWarriorName:(NSString *)newWarriorName
{
    warriorName = newWarriorName;
}

@end
