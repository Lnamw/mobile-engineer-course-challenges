//
//  main.c
//  ClassCertificates
//
//  Created by Elena Maso Willen on 28/02/2016.
//  Copyright © 2016 Big Nerd Branch. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s Programmind as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {
    congratulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Elena", "JS", 1);
    sleep(2);

    return 0;
}
