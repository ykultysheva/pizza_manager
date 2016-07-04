//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by steve on 2016-06-30.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if (self = [super init]) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+(Pizza *)largePepperoni {
    return [[self alloc] initWithSize:PizzaSizeLarge toppings:@[@"pepperoni", @"cheese"]];
}
@end
