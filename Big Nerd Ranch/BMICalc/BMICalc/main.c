;//
//  main.c
//  BMICalc
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
//
//struct Person {
//    float heighInMeters;
//    int weightInKilos;
//};

typedef struct {
    float heighInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex (Person p) {
    return p.weightInKilos / (p.heighInMeters * p.weightInKilos);
}


int main(int argc, const char * argv[]) {
    // insert code here...

    Person mickey;
    mickey.heighInMeters = 1.7;
    mickey.weightInKilos = 96;
    
    Person aaron;
    aaron.heighInMeters = 1.97;
    aaron.weightInKilos = 84;
    
//    printf("Mikey is %.2f meter tall\n", mickey.heighInMeters);
//    printf("Mikey weight %d kilograms\n", mickey.weightInKilos);
//    printf("Aaron is %.2f meter tall\n", aaron.heighInMeters);
//    printf("Aaron weight %d kilograms\n", aaron.weightInKilos);

    float bmi;
    bmi = bodyMassIndex(mickey);
    printf("Mikey has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);

    
    return 0;
}
