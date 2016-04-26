//
//  ViewController.m
//  Age calculator Challenge
//
//  Created by Elena Maso Willen on 12/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *birthDateLabel;

@property (weak, nonatomic) IBOutlet UILabel *currentDateLabel;

@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterLongStyle];
    
    NSString *stringFromDate = [formatter stringFromDate:currentDate];
    self.currentDateLabel.text = stringFromDate;
    
    
}






@end
