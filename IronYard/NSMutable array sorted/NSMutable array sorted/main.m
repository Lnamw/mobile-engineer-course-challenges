//
//  main.m
//  NSMutable array sorted
//
//  Created by Elena Maso Willen on 09/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSMutableArray *myArrayToSort = [NSMutableArray array];
        
        [myArrayToSort addObject:@44];
        [myArrayToSort addObject:@-1];
        [myArrayToSort addObject:@10];
        [myArrayToSort addObject:@-5];
        [myArrayToSort addObject:@9];
        
        id myTemporary;
        
        int sizeOfMyArrayToSort = (sizeof myArrayToSort) / (sizeof myArrayToSort[0]);
        
        NSLog(@"My New array sorted is:");
        for (int counter = 0; counter < sizeOfMyArrayToSort; counter++) {
            for (int i = 0; i < sizeOfMyArrayToSort; i++) {
                if (myArrayToSort[i] > myArrayToSort[i +1]) {
                    myTemporary = myArrayToSort[i] ;
                    myArrayToSort[i] = myArrayToSort[i +1];
                    myArrayToSort[i +1] = myTemporary;

                }
            }
        }
        NSLog(@"My NEW Array sorted is %@, %@, %@, %@, %@, %@\n", myArrayToSort[0], myArrayToSort[1], myArrayToSort[2], myArrayToSort[3], myArrayToSort[4]);

    
    
    }
    return 0;
}
