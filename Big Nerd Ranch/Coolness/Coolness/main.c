//
//  main.c
//  Coolness
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <readline/readline.h>
#include <stdio.h>


int main(int argc, const char * argv[]) {
    // insert code here...

    printf("Where should I start counting? ");
    const char *name = readline(NULL);
    int num = atoi(name);
    
    for (int i = num; i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }


    
    
    return 0;
}
