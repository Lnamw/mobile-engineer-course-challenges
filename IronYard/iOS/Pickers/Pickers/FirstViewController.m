//
//  FirstViewController.m
//  Pickers
//
//  Created by Elena Maso Willen on 22/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (strong, nonatomic) NSArray *pickerData;


@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pickerData = @[@"Luke", @"Leia", @"Han", @"Chewbacca", @"Artoo", @"C3PO", @"Yoda"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [_pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _pickerData[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *character = _pickerData[row];
    NSString *fullImageName = [NSString stringWithFormat:@"%@.jpg", character];
    _myImageView.image = [UIImage imageNamed:fullImageName];
}

@end





