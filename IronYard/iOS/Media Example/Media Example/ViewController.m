//
//  ViewController.m
//  Media Example
//
//  Created by Elena Maso Willen on 05/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
- (IBAction)mediaSegments:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"mypdf" ofType:@"pdf"];
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:filePath]]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mediaSegments:(id)sender {
    NSString *filePath;
    
    switch ([sender selectedSegmentIndex]) {
        case 0:
            filePath = [[NSBundle mainBundle] pathForResource:@"mypdf" ofType:@"pdf"];
            break;

        case 1:
            filePath = [[NSBundle mainBundle] pathForResource:@"excel" ofType:@"xlsx"];
            break;
            
        case 2:
            filePath = [[NSBundle mainBundle] pathForResource:@"mykeynote" ofType:@"ppt"];
            break;
            
        case 3:
            filePath = [[NSBundle mainBundle] pathForResource:@"movie" ofType:@"m4v"];
            break;
            
        default:
            break;
    }
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:filePath]]];
}

@end







