//
//  spearClass.m
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "spearClass.h"

@implementation spearClass

-(id)init
{
    if (self = [super init])
    {
        warriorType = 1;
        warriorDmg = 4;
        warriorName = @"Spearman";
        warriorWounds = false;
    }
    return self;
}

-(NSString*)getWarriorWounds
{
    if (warriorWounds == true)
    {
        return @"wounded!";
    } else {
        return @"uninjured";
    }
}

@end
