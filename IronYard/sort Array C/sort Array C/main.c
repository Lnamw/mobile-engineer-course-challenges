//
//  main.c
//  sort Array C
//
//  Created by Elena Maso Willen on 09/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

    
    int arrayToSort[3] = [44, -1, 10];
    
    int arraySorted[3];
    
    int sizeOfArrayToSort = (sizeof arrayToSort) / (sizeof arrayToSort[0]);
    
    
    
    for (int i=0; i < sizeOfArrayToSort; i++) {
        if (arrayToSort[i] > arrayToSort[i +1]) {
            arraySorted[i] = arrayToSort[i +1];
        } else {
            arraySorted[i] = arrayToSort[i];
        }
    }
    
    printf(<#const char *restrict, ...#>)
    
    return 0;
}
