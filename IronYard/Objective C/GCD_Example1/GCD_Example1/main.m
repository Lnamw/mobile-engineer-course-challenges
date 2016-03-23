//
//  main.m
//  GCD_Example1
//
//  Created by Elena Maso Willen on 21/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        dispatch_queue_t myQueue;
        myQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 1"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 2"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 3"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 4"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 5"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 6"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 7"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 8"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 9"); } );
        dispatch_sync(myQueue, ^{ NSLog(@"Dispatch 10"); } );
        
        NSLog(@"End of App");
        sleep(1);
    
    
    }
    return 0;
}
