//
//  SecondViewController.m
//  Pickers
//
//  Created by Elena Maso Willen on 22/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "SecondViewController.h"

#define kFillingComponent 0
#define kBreadComponent 1

@interface SecondViewController ()

@property (nonatomic, strong) NSArray *fillingTypes;
@property (nonatomic, strong) NSArray *breadTypes;
@property (weak, nonatomic) IBOutlet UIPickerView *myDoublePicker;

- (IBAction)myButton:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.breadTypes = @[@"White", @"Brown", @"Roll", @"Bap", @"Crusty"];
    self.fillingTypes = @[@"Ham", @"Turkey", @"Liver", @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Marmite"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == kBreadComponent) {
        return [self.breadTypes count];
    } else {
        return [self.fillingTypes count];
    }
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == kBreadComponent) {
        return self.breadTypes[row];
    } else {
        return self.fillingTypes[row];
    }
}

- (IBAction)myButton:(id)sender {
    NSInteger breadRow = [self.myDoublePicker selectedRowInComponent:kBreadComponent];
    NSInteger fillingRow = [self.myDoublePicker selectedRowInComponent:kFillingComponent];
    
    NSString *breadSelected = self.breadTypes[breadRow];
    NSString *fillingSelected = self.fillingTypes[fillingRow];
    
    NSString *message = [NSString stringWithFormat:@"Your %@ on %@ will be right up.", fillingSelected, breadSelected];
    
    UIAlertController *myAlert = [UIAlertController alertControllerWithTitle:@"Picker Result" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        NSLog(@"OK button pressed");
    }];
    
    [myAlert addAction:ok];
    [self presentViewController:myAlert animated:YES completion:nil];
    
    
}
@end







