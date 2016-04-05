//
//  ViewController.m
//  Gesture Recognisers
//
//  Created by Elena Maso Willen on 05/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property BOOL singleTap;
@property BOOL doubleTap;
@property BOOL tripleTap;
@property (weak, nonatomic) IBOutlet UIView *singleTapView;
@property (weak, nonatomic) IBOutlet UIView *doubleTapView;
@property (weak, nonatomic) IBOutlet UIView *swipeView;
@property (weak, nonatomic) IBOutlet UIView *tripleTapView;

- (IBAction)tripleTapDetected:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.singleTap = NO;
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapDetected:)];
    singleTapGesture.numberOfTapsRequired = 1;
    [self.singleTapView addGestureRecognizer:singleTapGesture];
    
    self.doubleTap = NO;
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapDetected:)];
    doubleTapGesture.numberOfTapsRequired = 2;
    [self.doubleTapView addGestureRecognizer:doubleTapGesture];
    
    UISwipeGestureRecognizer *swipeRecogniserRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRightDetected:)];
    swipeRecogniserRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.swipeView addGestureRecognizer:swipeRecogniserRight];
    UISwipeGestureRecognizer *swipeRecogniserLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeftDetected:)];
    swipeRecogniserLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.swipeView addGestureRecognizer:swipeRecogniserLeft];
    
    self.tripleTap = NO;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)singleTapDetected:(UIGestureRecognizer *)sender {
    NSLog(@"Single Tap Detected");
    self.singleTap = !self.singleTap;
    if (self.singleTap) {
        self.singleTapView.backgroundColor = [UIColor redColor];
    } else
        self.singleTapView.backgroundColor = [UIColor whiteColor];
}

-(IBAction)doubleTapDetected:(UIGestureRecognizer *)sender {
    NSLog(@"Double Tap Detected");
    self.doubleTap = !self.doubleTap;
    if (self.doubleTap) {
        self.doubleTapView.backgroundColor = [UIColor greenColor];
    } else
        self.doubleTapView.backgroundColor = [UIColor whiteColor];
}

-(IBAction)swipeRightDetected:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipe Right Detected");
    self.swipeView.backgroundColor = [UIColor yellowColor];
}

-(IBAction)swipeLeftDetected:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipe Left Detected");
    self.swipeView.backgroundColor = [UIColor blueColor];
}

- (IBAction)tripleTapDetected:(id)sender {
    NSLog(@"Triple Tap Detected");
    self.tripleTap = !self.tripleTap;
    if (self.tripleTap) {
        self.tripleTapView.backgroundColor = [UIColor orangeColor];
    } else
        self.tripleTapView.backgroundColor = [UIColor whiteColor];
}


@end








