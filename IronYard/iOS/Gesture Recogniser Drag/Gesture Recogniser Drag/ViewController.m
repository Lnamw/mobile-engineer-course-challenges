//
//  ViewController.m
//  Gesture Recogniser Drag
//
//  Created by Elena Maso Willen on 05/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cardImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIPanGestureRecognizer *panRecogniser = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveObject:)];
    panRecogniser.minimumNumberOfTouches = 1;
    [self.cardImage addGestureRecognizer:panRecogniser];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveObject:(UIPanGestureRecognizer *)sender {
    self.cardImage.center = [sender locationInView:_cardImage.superview];
}

@end
