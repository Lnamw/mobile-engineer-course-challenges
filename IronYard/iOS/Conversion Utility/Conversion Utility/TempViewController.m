//
//  TempViewController.m
//  Conversion Utility
//
//  Created by Elena Maso Willen on 21/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()

@property (weak, nonatomic) IBOutlet UITextField *valueField;

- (IBAction)convertButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation TempViewController

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
    int temp_celsius = [_valueField.text intValue];
    int result = temp_celsius * 9 / 5 + 32;
    _resultLabel.text = [NSString stringWithFormat:@"Result: %d Fahrenheit", result];
}




@end





