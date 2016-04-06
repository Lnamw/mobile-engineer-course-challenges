//
//  ViewController.m
//  Media Example 2
//
//  Created by Elena Maso Willen on 05/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property(strong, nonatomic) WKWebView *myWebView;
- (IBAction)mediaSegments:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect myFrame = self.view.frame;
    myFrame.origin.y = myFrame.origin.y + 60;
    myFrame.size.height = myFrame.size.height -60;
    _myWebView = [[WKWebView alloc] initWithFrame:myFrame];
    [self.view addSubview:_myWebView];
    
    NSURL *filePath = [[NSBundle mainBundle] URLForResource:@"mypdf" withExtension:@"pdf"];
    [_myWebView loadFileURL:filePath allowingReadAccessToURL:filePath];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mediaSegments:(id)sender {
    NSURL *filePath;
    
    switch ([sender selectedSegmentIndex]) {
        case 0:
            filePath = [[NSBundle mainBundle] URLForResource:@"mypdf" withExtension:@"pdf"];
            break;
        case 1:
            filePath = [[NSBundle mainBundle] URLForResource:@"excel" withExtension:@"xlsx"];
            break;
        case 2:
            filePath = [[NSBundle mainBundle] URLForResource:@"mykeynote" withExtension:@"ppt"];
            break;
        case 3:
            filePath = [[NSBundle mainBundle] URLForResource:@"movie" withExtension:@"m4v"];
            break;
        default:
            break;
    }
    [_myWebView loadFileURL:filePath allowingReadAccessToURL:filePath];
}


@end
