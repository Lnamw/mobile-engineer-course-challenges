//
//  main.m
//  table protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Table.h"
#import "DataSource.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        DataSource *myData = [[DataSource alloc] init];
        Table *myTable = [[Table alloc] init];
        
        myTable.delegate = myData;
        
        [myTable howManyRowsDoIRequire];
        [myTable howManySectionsDoIRequire];
        [myTable whatIsTheTitleForTheCell:2];
    
    }
    return 0;
}
