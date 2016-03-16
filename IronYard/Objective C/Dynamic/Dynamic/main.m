//
//  main.m
//  Dynamic
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Person *myPerson = [[Person alloc] init];
        [myPerson setAge:@30];
        [myPerson setName:@"Richard"];
        NSLog(@"I am a person. My name is %@ and my age is %@", [myPerson name], [myPerson age]);
        
        id myObject = [[Person alloc] init];
        [myObject setAge:@40];
        [myObject setName:@"Peter"];
        NSLog(@"I am a person. My name is %@ and my age is %@", [myObject name], [myObject age]);
        
        myObject = @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"];
        NSLog(@"I am now an array. My content is %@", myObject);
        
        myObject = [[Person alloc] init];
        NSNumber *myArgument = @10;
        NSString *myArgument2 = @"Peter";
        SEL mySelector = NSSelectorFromString(@"setName:");
        [myObject performSelector:@selector(setAge:) withObject:myArgument];
        [myObject performSelector:mySelector withObject:myArgument2];
        NSLog(@"I am a person. My name is %@ and my age is %@", [myObject name], [myObject age]);
        
        if ([myObject isKindOfClass:[Person class]]) {
            NSLog(@"My object is from the Person Class");
        }
        if ([myObject respondsToSelector:@selector(setName:)]) {
            NSLog(@"My object does respond to this method");
        }
        
        
    
    }
    return 0;
}
