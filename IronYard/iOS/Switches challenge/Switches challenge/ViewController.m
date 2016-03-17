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

- (IBAction)switchesChanged:(id)sender;


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


- (IBAction)switchesChanged:(id)sender {
    
    if (_switchOne.) {
        _switchOne.on = YES;
        _switchTwo.on = YES;
        _switchThree.on = YES;
        _switchFour.on = YES;
    } else {
        _switchOne.on = NO;
        _switchTwo.on = NO;
        _switchThree.on = NO;
        _switchFour.on = NO;
    }
    
}



@end
