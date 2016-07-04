//
//  GoodManager.m
//  PizzaRestaurant
//
//  Created by Yana Kultysheva on 2016-07-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "GoodManager.h"

@implementation GoodManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog (@"Some pizza");
}

@end
