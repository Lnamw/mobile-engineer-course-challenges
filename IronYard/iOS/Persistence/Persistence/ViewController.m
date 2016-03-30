//
//  ViewController.m
//  Persistence
//
//  Created by Elena Maso Willen on 30/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"
#define kFilename @"saveData.plist"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *addressField;
@property (weak, nonatomic) IBOutlet UITextField *townField;
@property (weak, nonatomic) IBOutlet UITextField *countyField;

- (NSURL *)pathToFile;
- (void)applicationDidEnterBackgroung: (NSNotification *)notification;
- (IBAction)textFieldDoneEditing:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *filePAthURL = [self pathToFile];
    if ([[[NSFileManager alloc]init] fileExistsAtPath:[filePAthURL path]]) {
        NSArray *myArray = [[NSArray alloc] initWithContentsOfURL:filePAthURL];
        self.nameField.text = myArray[0];
        self.addressField.text = myArray[1];
        self.townField.text = myArray[2];
        self.countyField.text = myArray[3];
    }
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidEnterBackgroung:) name:UIApplicationDidEnterBackgroundNotification object:app];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSURL *)pathToFile
{
    NSFileManager *fm = [[NSFileManager alloc]init];
    NSError *err;
    NSURL *docsURL = [fm URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:YES error:&err];
    return [docsURL URLByAppendingPathComponent:kFilename];
}

- (void)applicationDidEnterBackgroung: (NSNotification *)notification {
    NSMutableArray *myArray = [[NSMutableArray alloc]init];
    [myArray addObject:self.nameField.text];
    [myArray addObject:self.addressField.text];
    [myArray addObject:self.townField.text];
    [myArray addObject:self.countyField.text];
    [myArray writeToURL:[self pathToFile] atomically:YES];
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end





