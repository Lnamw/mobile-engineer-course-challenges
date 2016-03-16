//
//  main.c
//  Challenge Anagram
//
//  Created by Elena Maso Willen on 07/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

    
    
    char A[20];
    char B[20];
    
    for (int g = 0; g <20; g++) {
        A[g] = 0;
        B[g] = 0;
    }

    
    
    printf("Choose first word: \n");
    scanf("%s", &A);
    
    printf("Choose second word: \n");
    scanf("%s", &B);

//    printf("%s", A);
//    printf("%s", B);
    
    int arsizeA = sizeof(A)/sizeof(A[0]);
    int arsizeB = sizeof(B)/sizeof(B[0]);

    
    
    int count1[256];
    int count2[256];
    
      for (int g = 0; g <256; g++) {
          count1[g] = 0;
          count2[g] = 0;
    }
    
    for (int i = 0; i < arsizeA; i++) {
        int y = A[i];
//        printf("initial y is %i\n", y);
//        y = y - 97;
//        printf("y is %i\n", y);

        count1[y] += 1;
    }
    
//    for (int g = 0; g <26; g++) {
//        printf("Count1 is %i count2 is %i\n", count1[g], count2[g]);
//
//    }
    
    for (int z = 0; z < arsizeB; z++) {
        int x = B[z];
//        printf("initial x is %i\n", x);

//        x = x - 97;
//        printf("x is %i\n", x);

        count2[x] += 1;
    }
    
    
    
    int flag = 0;
    
    
    for (int i = 0; i <= 25; i++) {
        
        if (count1[i] != count2[i])
        {
            flag = 1;
            break;
        }
        }
    
    if (flag) {
            printf("It's NOT an anagram\n");
  
        }
            
        else {
            printf("It's an anagram\n");
 
        }
        
        
   
    
    
    
    return 0;
}
