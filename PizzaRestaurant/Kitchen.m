//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    
    if ([self.delegate kitchen:self shouldMakePizzaWithSize:size andToppings:toppings]) {
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            return [[Pizza alloc] initWithSize:PizzaSizeLarge toppings:toppings];

        } else {
        
           Pizza* newPizza = [[Pizza alloc] initWithSize:size toppings:toppings];
            if (newPizza) {
                
                if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                
                [self.delegate kitchenDidMakePizza:newPizza];
                }
            }
        
            return newPizza;
        }
        
        
    } else {
        return nil;
    }
}







- (Pizza *)largePepperoni {
    return [Pizza largePepperoni];
}

-(void)makePizza:(PizzaSize)size toppings:(NSArray *)toppings{
   
    
    
}

@end
