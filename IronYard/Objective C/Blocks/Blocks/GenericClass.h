//
//  GenericClass.h
//  Blocks
//
//  Created by Elena Maso Willen on 18/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenericClass : NSObject

- (void) methodThatTakesABlockAsAParameter:(void(^)(void)) blockToProcess;

-(void)methodThatTakesABlockAsAParameterSuppliesData:(void (^)(NSString *param))blockToProcess;


@end
