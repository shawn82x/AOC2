//
//  Warriors.h
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum 
{
    warrior_Knight=0,
    warrior_Spearman,
    warrior_Archer
}myWarrior;

@interface Warriors : NSObject
{
@protected
    myWarrior warriorType;
    int dmgPerHit;
    NSString *warriorName;
}

-(int)getDmg;
-(NSString*)getName;


@end
