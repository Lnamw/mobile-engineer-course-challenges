//
//  Tyres.h
//  Composition
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tyres : NSObject
@property (strong, nonatomic) NSString *manufacturer;
@property (strong, nonatomic) NSString *rimSize;
@property (strong, nonatomic) NSNumber *width;
@property BOOL turbo;

@end
