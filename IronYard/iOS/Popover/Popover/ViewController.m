//
//  ViewController.m
//  Popover
//
//  Created by Elena Maso Willen on 30/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//


#import "ViewController.h"
#import "PopoverContentViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *switch1Label;
@property (weak, nonatomic) IBOutlet UILabel *switch2Label;
@property (weak, nonatomic) IBOutlet UILabel *switch3Label;
@property (weak, nonatomic) IBOutlet UILabel *switch4Label;

@property (strong, nonatomic) UIPopoverPresentationController *myPopoverPresentationController;
@property (strong, nonatomic) PopoverContentViewController *myPopoverController;

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowPopoverFromToolbar"] || [segue.identifier isEqualToString:@"ShowPopoverFromButton"]) {
        self.myPopoverController = segue.destinationViewController;
        self.myPopoverPresentationController = [self.myPopoverController popoverPresentationController];
        self.myPopoverPresentationController.delegate = self;
    }
}

-(void)popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
    if (self.myPopoverController.Switch1.on) {
        self.switch1Label.text = @"On";
    } else {
        self.switch1Label.text = @"Off";
    }
    
    if (self.myPopoverController.Switch2.on) {
        self.switch2Label.text = @"On";
    } else {
        self.switch2Label.text = @"Off";
    }
    
    if (self.myPopoverController.Switch3.on) {
        self.switch3Label.text = @"On";
    } else {
        self.switch3Label.text = @"Off";
    }
    
    if (self.myPopoverController.Switch4.on) {
        self.switch4Label.text = @"On";
    } else {
        self.switch4Label.text = @"Off";
    }
    
    self.myPopoverPresentationController.delegate = nil;
    self.myPopoverPresentationController = nil;
    self.myPopoverController = nil;
}

-(void)prepareForPopoverPresentation:(UIPopoverPresentationController *)popoverPresentationController {
    if ([self.switch1Label.text isEqualToString:@"Off"]) {
        [self.myPopoverController.Switch1 setOn:NO];
    } else {
        [self.myPopoverController.Switch1 setOn:YES];
    }
    
    if ([self.switch2Label.text isEqualToString:@"Off"]) {
        [self.myPopoverController.Switch2 setOn:NO];
    } else {
        [self.myPopoverController.Switch2 setOn:YES];
    }
    
    if ([self.switch3Label.text isEqualToString:@"Off"]) {
        [self.myPopoverController.Switch3 setOn:NO];
    } else {
        [self.myPopoverController.Switch3 setOn:YES];
    }
    
    if ([self.switch4Label.text isEqualToString:@"Off"]) {
        [self.myPopoverController.Switch4 setOn:NO];
    } else {
        [self.myPopoverController.Switch4 setOn:YES];
    }
}


@end







