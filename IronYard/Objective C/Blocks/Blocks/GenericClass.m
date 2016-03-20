//
//  GenericClass.m
//  Blocks
//
//  Created by Elena Maso Willen on 18/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "GenericClass.h"

@implementation GenericClass

- (void) methodThatTakesABlockAsAParameter:(void(^)(void)) blockToProcess
{
    blockToProcess();
}

-(void)methodThatTakesABlockAsAParameterSuppliesData:(void (^)(NSString *param))blockToProcess;
{
    blockToProcess(@"Text Passed as a Param");
}

@end
