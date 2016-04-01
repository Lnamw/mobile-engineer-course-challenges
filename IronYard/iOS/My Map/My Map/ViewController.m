//
//  ViewController.m
//  My Map
//
//  Created by Elena Maso Willen on 01/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"
#import "MapAnnotation.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *myMapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [_myMapView setDelegate:self];
    CLLocationCoordinate2D theCoordinate = CLLocationCoordinate2DMake(51.51447145, -0.13511896);
    MKCoordinateRegion myRegion = MKCoordinateRegionMakeWithDistance(theCoordinate, 500, 500);
    [_myMapView setRegion:myRegion animated:YES];
    
    //Line
    CLLocationCoordinate2D lineCoordinates[5] =
        {{51.51424444936763, -0.14179229736328125},
        {51.51521924732889, -0.1418781280517578},
        {51.51758271194066, -0.12044191360473633},
        {51.513059307310265, -0.12422919273376465},
        {51.51217961150812, -0.12362827791442871}};
    MKPolyline *line = [MKPolyline polylineWithCoordinates:lineCoordinates count:5];
    [self.myMapView addOverlay:line];
    [self.myMapView setVisibleMapRect:line.boundingMapRect];
    
    //Circle
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:theCoordinate radius:50];
    [self.myMapView addOverlay:circle];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
    CLLocationCoordinate2D theCoordinate = CLLocationCoordinate2DMake(51.51447145, -0.13511896);
    MapAnnotation *amsys = [[MapAnnotation alloc] initWithPosition:theCoordinate];
    [amsys setCoordinate:theCoordinate];
    [amsys setTitle: @"Amsys Training Centre"];
    [amsys setSubtitle:@"24 Berwick Street, London, W1F 8RE"];
    [self.myMapView addAnnotation:amsys];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    MKPinAnnotationView *pinView = nil;
    static NSString *defaultPinID = @"myPinID";
    pinView = (MKPinAnnotationView *)[_myMapView dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
    if (pinView == nil) {
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:defaultPinID];
    }
    [pinView setPinTintColor:[UIColor greenColor]];
    [pinView setCanShowCallout:YES];
    [pinView setAnimatesDrop:YES];
    UIImageView *myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"amsys.png"]];
    myImageView.frame = CGRectMake(0, 0, 25, 25);
    [pinView setLeftCalloutAccessoryView:myImageView];
    [pinView setRightCalloutAccessoryView:[UIButton buttonWithType:UIButtonTypeDetailDisclosure]];
    return pinView;
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.amsys.co.uk"]];
}

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay {
    
    if ([overlay isKindOfClass:[MKPolyline class]]) {
    MKPolyline *route = overlay;
    MKPolylineRenderer *routeRenderer = [[MKPolylineRenderer alloc] initWithPolyline:route];
    routeRenderer.strokeColor = [[UIColor redColor] colorWithAlphaComponent:0.6];
    NSArray *pattern = @[@2, @5];
    [routeRenderer setLineDashPattern:pattern];
    [routeRenderer setLineWidth:3];
    return routeRenderer;
    } else {
        MKCircle *circle = overlay;
        MKCircleRenderer *routeRenderer = [[MKCircleRenderer alloc] initWithCircle:circle];
        
        routeRenderer.strokeColor = [[UIColor redColor] colorWithAlphaComponent:0.6];
        routeRenderer.fillColor = [[UIColor cyanColor] colorWithAlphaComponent:0.6];
        [routeRenderer setLineWidth:2];
        return routeRenderer;
    }
    return nil;
}

@end









