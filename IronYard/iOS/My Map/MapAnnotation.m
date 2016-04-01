//
//  MapAnnotation.m
//  My Map
//
//  Created by Elena Maso Willen on 01/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "MapAnnotation.h"

@implementation MapAnnotation

-initWithPosition:(CLLocationCoordinate2D)coords {
    if (self = [super init]) {
        _coordinate = coords;
    }
    return self;
}


@end
