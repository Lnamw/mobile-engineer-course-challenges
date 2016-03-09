//
//  main.c
//  Squarer
//
//  Created by Elena Maso Willen on 04/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void squarer(int number)
{
    int calcsquarer = number * number;
    printf("\"%d\" squared is \"%d\"\n", number, calcsquarer);
}


int main(int argc, const char * argv[]) {
    // insert code here...
    
    squarer(5);
    
    int number = 5;
    int calcsquarer = number * number;
    printf("\"%d\" squared is \"%d\"\n", number, calcsquarer);
    
    return 0;
}
