//
//  main.m
//  structs
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

struct date {
    int month;
    int day;
    int year;
};

struct hero {
    char firstName[80];
    char lastName[80];
    int age;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        struct date purchaseDate;
        
        purchaseDate.year = 2010;
        purchaseDate.month = 4;
        purchaseDate.day = 1;
        
        NSLog(@"The purchase date is %d/%d/%d.\n", purchaseDate.day, purchaseDate.month, purchaseDate.year);

        
        struct hero myHero;
        
        strcpy(myHero.firstName, "Indiana");
        strcpy(myHero.lastName, "Jones");
        myHero.age = 70;
        
        NSLog(@"My hero is %s %s who is now %d years old.", myHero.firstName, myHero.lastName, myHero.age);
    
    
    }
    return 0;
}
