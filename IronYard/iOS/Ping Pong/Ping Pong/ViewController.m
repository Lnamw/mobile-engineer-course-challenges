//
//  ViewController.m
//  Ping Pong
//
//  Created by Elena Maso Willen on 17/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *playerOneName;
- (IBAction)namePlayerOneEditing:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *playerTwoName;
- (IBAction)namePlayerTwoEditing:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *playerThreeName;
- (IBAction)namePlayerThreeEditing:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *playerFourName;
- (IBAction)namePlayerFourEditing:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *stepperValueLabel;
- (IBAction)stepperValueChanged:(id)sender;


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

- (IBAction)namePlayerOneEditing:(id)sender {
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)stepperValueChanged:(id)sender {
    UIStepper *myStepper = (UIStepper *)sender;
    NSString *textToDisplay = [NSString stringWithFormat:@"Number of lives: %.0f", myStepper.value];
    self.stepperValueLabel.text = textToDisplay;
}
- (IBAction)namePlayerTwoEditing:(id)sender {
    UIStepper *myStepper = (UIStepper *)sender;
    NSString *textToDisplay = [NSString stringWithFormat:@"Number of lives: %.0f", myStepper.value];
    self.stepperValueLabel.text = textToDisplay;
}
- (IBAction)namePlayerThreeEditing:(id)sender {
    UIStepper *myStepper = (UIStepper *)sender;
    NSString *textToDisplay = [NSString stringWithFormat:@"Number of lives: %.0f", myStepper.value];
    self.stepperValueLabel.text = textToDisplay;
}
- (IBAction)namePlayerFourEditing:(id)sender {
    UIStepper *myStepper = (UIStepper *)sender;
    NSString *textToDisplay = [NSString stringWithFormat:@"Number of lives: %.0f", myStepper.value];
    self.stepperValueLabel.text = textToDisplay;
}
@end
