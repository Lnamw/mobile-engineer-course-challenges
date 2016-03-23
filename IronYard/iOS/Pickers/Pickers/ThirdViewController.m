//
//  ThirdViewController.m
//  Pickers
//
//  Created by Elena Maso Willen on 22/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ThirdViewController.h"

#define kShowsComponent 0
#define kCharactersComponent 1

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *myDependantPicker;
@property (strong, nonatomic) NSDictionary *showsCharacters;
@property (strong, nonatomic) NSArray *shows;
@property (strong, nonatomic) NSArray *characters;


- (IBAction)myButton:(id)sender;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSBundle *myBundle = [NSBundle mainBundle];
    NSString *plistPath = [myBundle pathForResource:@"shows-characters" ofType:@"plist"];
    self.showsCharacters = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSArray *allKeys = [self.showsCharacters allKeys];
    NSArray *sortedKeys = [allKeys sortedArrayUsingSelector:@selector(compare:)];
    self.shows = sortedKeys;
    
    NSString *selectedShow = self.shows[0];
    self.characters = [self.showsCharacters objectForKey:selectedShow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == kShowsComponent) {
        return [self.shows count];
    } else {
        return [self.characters count];
    };
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == kShowsComponent) {
        return self.shows[row];
    } else {
        return self.characters[row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == kShowsComponent) {
        NSString *selectedShow = self.shows[row];
        self.characters = [self.showsCharacters objectForKey:selectedShow];
        [self.myDependantPicker selectRow:0 inComponent:kCharactersComponent animated:YES];
        [self.myDependantPicker reloadComponent:kCharactersComponent];
    }
}



- (IBAction)myButton:(id)sender {
    NSInteger showRow = [self.myDependantPicker selectedRowInComponent:kShowsComponent];
    NSInteger characterRow = [self.myDependantPicker selectedRowInComponent:kCharactersComponent];
    NSString *show = self.shows[showRow];
    NSString *character = self.characters[characterRow];
    NSString *title = [NSString stringWithFormat:@"You selected the show %@.", show];
    NSString *message = [NSString stringWithFormat:@"%@ is in %@", character, show];
    
    UIAlertController *myAlert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"OK button pressed");
    }];
    
    [myAlert addAction:ok];
    [self presentViewController:myAlert animated:YES completion:nil];


}

@end








