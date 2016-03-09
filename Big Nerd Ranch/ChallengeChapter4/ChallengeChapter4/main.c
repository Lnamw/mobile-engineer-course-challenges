//
//  main.c
//  ChallengeChapter4
//
//  Created by Elena Maso Willen on 28/02/2016.
//  Copyright © 2016 Big Nerd Branch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 20;
    int j = 25;
    int k = ( i > j ) ? 10 : 5;
    
    if (5 < j - k) {
        printf("First expression");
    } else if (j > i) {
        printf("Second expression");
    } else {
        printf("Neihter");
    }
    return 0;
}
