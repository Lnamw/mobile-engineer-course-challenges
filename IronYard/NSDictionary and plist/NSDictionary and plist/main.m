//
//  main.m
//  NSDictionary and plist
//
//  Created by Elena Maso Willen on 07/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableDictionary *myPrefs = [NSMutableDictionary dictionary];
        [myPrefs setObject:@"Benjamin" forKey:@"Name"];
        [myPrefs setObject:[NSNumber numberWithInt:30] forKey:@"Age"];
        
        if ([myPrefs writeToFile:@"/Users/Shared/prefs.plist" atomically:YES] == NO) {
            NSLog(@"Save failed");
        } else
            NSLog(@"Save successful");
        
        NSMutableDictionary *myNewPrefs = [NSMutableDictionary dictionaryWithContentsOfFile:@"/USers/Shared/prefs.plist"];
        
        NSLog(@"My new name is %@", [myNewPrefs objectForKey:@"Name"]);
        NSLog(@"My new age is %@", [myNewPrefs objectForKey:@"Age"]);
    }
    return 0;
}
