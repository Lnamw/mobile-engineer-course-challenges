//
//  main.m
//  Sort array
//
//  Created by Elena Maso Willen on 09/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        int arrayToSort[6] = {44, -1, 10, -5, 9, 50};
        
//        int arraySorted[5];
        
        int temporary;
        
//        int sizeOfArrayToSort = (sizeof arrayToSort) / (sizeof arrayToSort[0]);
        
        for (int counter = 0; counter < 6; counter++) {
            for (int i = 0; i < 6; i++) {
                if (arrayToSort[i] > arrayToSort[i +1]) {
                    temporary = arrayToSort[i] ;
                    arrayToSort[i] = arrayToSort[i +1];
                    arrayToSort[i +1] = temporary;
                }
            }
       
        }
    

        NSLog(@"My Array sorted is %d, %d, %d, %d, %d, %d\n", arrayToSort[0], arrayToSort[1], arrayToSort[2], arrayToSort[3], arrayToSort[4], arrayToSort[5]);
    
        
//        NSLog(@"%d", temporary);
        
    }
    return 0;
}
