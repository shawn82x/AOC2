//
//  ViewController.h
//  Project1
//
//  Created by Shawn Morgart on 6/26/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Warriors.h"
#import "knightClass.h"
#import "spearClass.h"
#import "archerClass.h"
#import "warriorFactory.h"


@interface ViewController : UIViewController
{
    UILabel *knightLabel;
    UILabel *spearLabel;
    UILabel *archerLabel;
    UILabel *typeLabel;
}

@end
