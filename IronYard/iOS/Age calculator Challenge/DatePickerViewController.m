//
//  DatePickerViewController.m
//  Age calculator Challenge
//
//  Created by Elena Maso Willen on 17/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "DatePickerViewController.h"
#import "ViewController.h"

@interface DatePickerViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)selectedDateButtonPressed:(id)sender;

@end

@implementation DatePickerViewController

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

- (IBAction)selectedDateButtonPressed:(id)sender {
    
    NSDate *date = self.datePicker.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterLongStyle];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    NSLog(@"%@", stringFromDate);
    
}




@end
