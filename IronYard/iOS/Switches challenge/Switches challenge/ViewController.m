//
//  ViewController.m
//  Switches challenge
//
//  Created by Elena Maso Willen on 17/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *switchOne;
@property (weak, nonatomic) IBOutlet UISwitch *switchTwo;
@property (weak, nonatomic) IBOutlet UISwitch *switchThree;
@property (weak, nonatomic) IBOutlet UISwitch *switchFour;


- (IBAction)switcheChanged:(id)sender;
- (IBAction)switch2Changed:(id)sender;


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






- (IBAction)switcheChanged:(id)sender {
    
}

- (IBAction)switch2Changed:(id)sender {
}
@end
