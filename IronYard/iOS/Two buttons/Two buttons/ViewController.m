//
//  ViewController.m
//  Two buttons
//
//  Created by Elena Maso Willen on 16/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)redButtonPressed:(id)sender;

- (IBAction)greenButtonPressed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redButtonPressed:(id)sender {
    self.myLabel.text = @"Red Button Pressed";
    self.myLabel.textColor = [UIColor redColor];
}

- (IBAction)greenButtonPressed:(id)sender {
    self.myLabel.text = @"Green Button Pressed";
    self.myLabel.textColor = [UIColor greenColor];
}
@end
