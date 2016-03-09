//
//  main.c
//  Degrees
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freeze at %f degrees Fahrenheit.\n", freezeInF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    
    return 0;
}
