//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Yana Kultysheva on 2016-07-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"

@implementation BadManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject: @"anchovies"]) {
        return NO;
    } else {
        return YES;
    }
    
}

        
        
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog (@"Nothing for you");
}

@end
