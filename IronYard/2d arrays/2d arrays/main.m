//
//  main.m
//  2d arrays
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int test_index, student_index;
        int scores[3][5] = {
            { 92, 73, 57, 98, 89 },
            { 88, 76, 23, 95, 72 },
            { 94, 82, 63, 99, 94 }
        };
        
        float sum;
        for (student_index = 0; student_index < 3; student_index++) {
            sum = 0;
            for (test_index = 0; test_index < 5; test_index++) {
                sum = sum + scores[student_index][test_index];
            }
            NSLog(@"Average test score for student %d is %2.1f\n", student_index + 1, sum / 5);
        }
    
    }
    return 0;
}
