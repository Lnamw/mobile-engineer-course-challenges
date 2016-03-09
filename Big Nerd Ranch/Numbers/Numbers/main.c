//
//  main.c
//  Numbers
//
//  Created by Elena Maso Willen on 04/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>



int main(int argc, const char * argv[]) {
    // insert code here...
    unsigned long x = 255;
    printf("x is %lu.\n", x);
    printf("In octal, x is %lo.\n", x);
    printf("In hexadecimal, x is %lx.\n", x);
    printf("The absolute value of -5 is %d\n", abs(-5));
    
    
    printf("%.3f\n", sin(1));
    
    
    return 0;
}
