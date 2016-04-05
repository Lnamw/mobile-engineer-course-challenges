//
//  ViewController.m
//  Gesture Recogniser Rotate
//
//  Created by Elena Maso Willen on 05/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cardimage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIRotationGestureRecognizer *rotateRecogniser = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotateObject:)];
    [self.cardimage addGestureRecognizer:rotateRecogniser];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)rotateObject:(UIRotationGestureRecognizer *)sender {
    NSLog(@"Rotating");
    self.cardimage.transform = CGAffineTransformMakeRotation(sender.rotation);
}

@end
