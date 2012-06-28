//
//  warriorFactory.h
//  Project1
//
//  Created by Shawn Morgart on 6/28/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Warriors.h"
#import "knightClass.h"
#import "spearClass.h"
#import "archerClass.h"

@interface warriorFactory : NSObject
+(Warriors*)Army : (NSInteger)warriorClass;

@end
