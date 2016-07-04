//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "GoodManager.h"
#import "BadManager.h"

PizzaSize sizeStringToEnum(NSString *str) {
    if ([str isEqualToString:@"small"]) {
        return PizzaSizeSmall;
    }
    if ([str isEqualToString:@"medium"]) {
        return PizzaSizeMedium;
    }
    if ([str isEqualToString:@"large"]) {
        return PizzaSizeLarge;
    }
    return PizzaSizeNoSize;
}

NSString* enumToString(PizzaSize size) {
    switch (size) {
        case PizzaSizeSmall:
            return @"small";
        case PizzaSizeMedium:
            return @"medium";
        case PizzaSizeLarge:
            return @"large";
        default:
            return @"No such size";
    }
}

void logMessageWithPizza(Pizza *pizza) {
    NSString *message;
    if (!pizza) {
        message = @"Please enter a legitimate pizza size! Try again";
    } else {
        message = [NSString stringWithFormat:@"%@ pizza with %@ toppings",  enumToString(pizza.size), pizza.toppings];
    }
    NSLog(@"%@", message);
}



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *kitchen = [Kitchen new];
        
        GoodManager *newManager = [GoodManager new];
        
        BadManager *newBadManager = [BadManager new];
        
        kitchen.delegate = newManager;
        
//        kitchen.delegate = newBadManager;
        
        
        
        
        
        while (YES) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *sizeAsString = [commandWords[0] lowercaseString];
            
            if ([sizeAsString isEqualToString:@"pepperoni"]) {
                Pizza *pizza = [kitchen largePepperoni];
                logMessageWithPizza(pizza);
                continue;
            }
            
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count-1)];
            
            PizzaSize size = sizeStringToEnum(sizeAsString);
            
            if (size == PizzaSizeNoSize) {
                logMessageWithPizza(nil);
                continue;
            }
            
            Pizza *pizza = [kitchen makePizzaWithSize:size toppings:toppings];
            logMessageWithPizza(pizza);
            
            
        }

    }
    return 0;
}

