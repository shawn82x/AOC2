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
    self = [super init];
    if (self != nil)
    {
        
    }
    return self;
};

-(int)getDmg
{
    NSLog(@"I do %i damage.", dmgPerHit);
    return dmgPerHit;
}


-(NSString*)getName
{
    NSLog(@"I am a %@.", warriorName);
    return warriorName;
}

@end
