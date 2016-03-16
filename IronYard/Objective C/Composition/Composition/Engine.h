//
//  Engine.h
//  Composition
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject
@property (strong, nonatomic) NSString *fuel;
@property (strong, nonatomic) NSNumber *cc;
@property (strong, nonatomic) NSNumber *cylinders;
@property BOOL turbo;

@end
