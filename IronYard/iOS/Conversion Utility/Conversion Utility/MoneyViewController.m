//
//  MoneyViewController.m
//  Conversion Utility
//
//  Created by Elena Maso Willen on 21/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "MoneyViewController.h"

@interface MoneyViewController ()

@property (weak, nonatomic) IBOutlet UITextField *valueField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)convertButton:(id)sender;


@end

@implementation MoneyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)convertButton:(id)sender {
    [_valueField resignFirstResponder];
    double sterling = [_valueField.text doubleValue];
    double result = sterling * 1.61;
    _resultLabel.text = [NSString stringWithFormat:@"Result: %0.2f Dollars", result];
}


@end





