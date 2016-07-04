//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by steve on 2016-06-30.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSUInteger, PizzaSize) {
    PizzaSizeNoSize,
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge,
};

@interface Pizza : NSObject
@property (nonatomic, readonly) NSArray *toppings;
@property (readonly) PizzaSize size;
- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
+(Pizza *)largePepperoni;
@end
