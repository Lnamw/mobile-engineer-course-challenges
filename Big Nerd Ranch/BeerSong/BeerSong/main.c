//
//  main.c
//  BeerSong
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("Ther are simply no more bottles of beer on the wall\n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles f beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
        singSongFor(oneFewer);
        
        printf("put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    singSongFor(4);
    
    return 0;
}
