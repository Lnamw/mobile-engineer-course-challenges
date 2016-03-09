//
//  main.c
//  Triangle
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB) {
    float angleC = 180 - angleA - angleB;
    return angleC;
}


int main(int argc, const char * argv[]) {
    // insert code here...

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}
