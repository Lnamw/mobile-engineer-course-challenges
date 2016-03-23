//
//  main.m
//  Predicate
//
//  Created by Elena Maso Willen on 21/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scores.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Scores *student1 = [[Scores alloc] init];
        [student1 setName:@"Peter"];
        [student1 setExamScore:@30];
        
        NSPredicate *myPredicate = [NSPredicate predicateWithFormat:@"examScore > 20"];
        BOOL conditionMet = [myPredicate evaluateWithObject:student1];
        if (conditionMet) {
            NSLog(@"Score is over 20");
        }
        
        myPredicate = [NSPredicate predicateWithFormat:@"name == 'Peter'"];
        conditionMet = [myPredicate evaluateWithObject:student1];
        if (conditionMet) {
            NSLog(@"Student name is Peter");
        }
        
        Scores *student2 = [[Scores alloc] init];
        [student2 setName:@"Richard"];
        [student2 setExamScore:@10];
        Scores *student3 = [[Scores alloc] init];
        [student3 setName:@"David"];
        [student3 setExamScore:@20];
        Scores *student4 = [[Scores alloc] init];
        [student4 setName:@"Ross"];
        [student4 setExamScore:@50];
        Scores *student5 = [[Scores alloc] init];
        [student5 setName:@"Rick"];
        [student5 setExamScore:@60];
        
        NSArray *allStudents = @[student1, student2, student3, student4, student5];
        
        myPredicate = [NSPredicate predicateWithFormat:@"examScore > 30"];
        NSArray *studentThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records where filtered", [studentThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"examScore BETWEEN {20, 60}"];
        studentThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records where filtered on exam score", [studentThatMatched count]);
        myPredicate = [NSPredicate predicateWithFormat:@"name LIKE '?ic*'"];
        studentThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records have ic as the second and third character", [studentThatMatched count]);
        
        myPredicate = [NSPredicate predicateWithFormat:@"examScore > %@ || name ENDSWITH %@", @30, @"d"];
        studentThatMatched = [allStudents filteredArrayUsingPredicate:myPredicate];
        NSLog(@"%lu records where filtered", [studentThatMatched count]);
        
    
    }
    return 0;
}



