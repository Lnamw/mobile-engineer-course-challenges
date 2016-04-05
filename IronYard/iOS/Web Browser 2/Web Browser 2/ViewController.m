//
//  ViewController.m
//  Web Browser 2
//
//  Created by Elena Maso Willen on 05/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *myUrlTextField;
@property (strong, nonatomic) WKWebView *myWebView;
- (IBAction)textFieldDoneEditing:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect myFrame = self.view.frame;
    myFrame.origin.y = myFrame.origin.y + 60;
    myFrame.size.height = myFrame.size.height -60;
    _myWebView = [[WKWebView alloc] initWithFrame:myFrame];
    [self.view addSubview:_myWebView];
    
    NSURL *myURL = [NSURL URLWithString:@"https://apple.com"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    [_myWebView loadRequest:myRequest];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
    NSURL *myURl = [NSURL URLWithString:_myUrlTextField.text];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURl];
    [_myWebView loadRequest:myRequest];
    

}

-(void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"didFinishNavigation");
    
    _myWebView.navigationDelegate = self;

}



@end










