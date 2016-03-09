//
//  main.c
//  Turkey
//
//  Created by Elena Maso Willen on 28/02/2016.
//  Copyright © 2016 Big Nerd Branch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // Declare the variable called 'weight' of type float
    float weigth;
    
    // Store a number in that variable
    weigth = 14.2;
    
    // Log it to the user
    printf("The turkey weight %f.\n", weigth);
    
    //Declare another variable of type float
    float cookingTime;
    
    cookingTime = 15.0 + 15.0 * weigth;
    
    printf("Cook it for %f minutes.\n", cookingTime);
    
    
    return 0;
}
