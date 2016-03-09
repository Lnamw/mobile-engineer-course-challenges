//
//  main.c
//  TwoFloats
//
//  Created by Elena Maso Willen on 28/02/2016.
//  Copyright © 2016 Big Nerd Branch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float premiere;
    premiere = 3.14;
    float deuxieme;
    deuxieme = 42.0;
    double sum;
    sum = deuxieme + premiere;
    
    printf("The result is %f.\n", sum);
    
    return 0;
}
