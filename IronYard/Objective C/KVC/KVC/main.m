//
//  main.m
//  KVC
//
//  Created by Elena Maso Willen on 15/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Person *myPerson = [[Person alloc] init];
        [myPerson setName:@"Peter"];
        [myPerson setAge:@30];
        NSLog(@"My name is %@ and my age is %@", [myPerson name], [myPerson age]);
        
        [myPerson setValue:@"Elena" forKey:@"name"];
        [myPerson setValue:@"29" forKey:@"age"];
        NSLog(@"My name is %@ and I am %@ years old", [myPerson name], [myPerson age]);
        
        NSString *key1 = @"name";
        NSString *key2 = @"age";
        NSString *name = [myPerson valueForKey:key1];
        NSNumber *age = [myPerson valueForKey:key2];
        NSLog(@"My name is %@ and my age is %@", name, age);
        
        NSDictionary *myResults = [myPerson dictionaryWithValuesForKeys:@[@"name", @"age"]];
        NSLog(@"Results is %@", myResults);
        
        NSDictionary *myDetails = @{ @"name" : @"Ben", @"age" : @25};
        [myPerson setValuesForKeysWithDictionary:myDetails];
        NSLog(@"My name is %@ and my age is %@", [myPerson name], [myPerson age]);
    
        NSNumber *len = [myPerson valueForKeyPath:@"name.length"];
        NSLog(@"Length of string is %d", [len intValue]);
        
        
        Person *myPerson2 = [[Person alloc] init];
        Person *myPerson3 = [[Person alloc] init];
        Person *myPerson4 = [[Person alloc] init];
        Person *myPerson5 = [[Person alloc] init];
        
        myPerson.age = @10;
        [myPerson2 setAge:@20];
        myPerson3.age = @30;
        [myPerson4 setAge:@40];
        myPerson5.age = @50;
        
        NSArray *myArray = @[myPerson, myPerson2, myPerson3, myPerson4, myPerson5];
        
        NSNumber *count = [myArray valueForKeyPath:@"@count"];
        NSLog(@"The array has %@ items", count);
        
        NSNumber *largest = [myArray valueForKeyPath:@"@max.age"];
        NSLog(@"The highest age is %@", largest);
        
        NSNumber *average = [myArray valueForKeyPath:@"@avg.age"];
        NSLog(@"The average is %@", average);
        
        
    
    }
    return 0;
}
