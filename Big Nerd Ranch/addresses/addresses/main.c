//
//  main.c
//  addresses
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

    int i = 17;
    int  *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    
    printf("A float is %zu bytes\n", sizeof(float));
    
    
    
    return 0;
}
