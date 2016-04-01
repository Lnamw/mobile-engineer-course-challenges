//
//  MapAnnotation.h
//  My Map
//
//  Created by Elena Maso Willen on 01/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapAnnotation : NSObject

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

-initWithPosition:(CLLocationCoordinate2D)coords;

@end
