//
//  ViewController.m
//  Top Songs
//
//  Created by Elena Maso Willen on 04/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *songsArray;

@property (strong, nonatomic) NSMutableData *xmlData;
@property (strong, nonatomic) NSURLConnection *connectionInProgress;

@property (strong, nonatomic) NSMutableString *titleString;

@property (strong, nonatomic) NSMutableArray *imagesArray;
@property (nonatomic) BOOL correctSizeImageFound;

@property(nonatomic, strong) UIActivityIndicatorView *cLoadingView;

-(void)loadSongs;

-(void)initSpinner;
-(void)spinBegin;
-(void)spinEnd;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _songsArray = [[NSMutableArray alloc] initWithCapacity:0];
    _imagesArray = [[NSMutableArray alloc] initWithCapacity:0];
    _correctSizeImageFound = NO;
    [self.refreshControl addTarget:self action:@selector(loadSongs) forControlEvents:UIControlEventValueChanged];
    [self initSpinner];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_songsArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"songCell"];
    NSUInteger row = [indexPath row];
    NSString *rowString = _songsArray[row];
    cell.textLabel.text = rowString;
    cell.textLabel.font = [UIFont systemFontOfSize:10.0];
    
    cell.imageView.image = nil;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_async(queue, ^{
        UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_imagesArray[row]]]];
        dispatch_sync(dispatch_get_main_queue(), ^{
            [[cell imageView] setImage:image];
            [cell setNeedsLayout];
        });
    });
    return cell;
}

-(void)loadSongs {
    [_songsArray removeAllObjects];
    [[self tableView] reloadData];
    
    NSURL *myUrl = [NSURL URLWithString:@"https://itunes.apple.com/gb/rss/topsongs/limit=10/xml"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myUrl cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:30];
    if (_connectionInProgress) {
        [_connectionInProgress cancel];
    }
    _xmlData = [[NSMutableData alloc] init];
    _connectionInProgress = [[NSURLConnection alloc] initWithRequest:myRequest delegate:self startImmediately:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [NSThread detachNewThreadSelector:@selector(spinBegin) toTarget:self withObject:nil];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    [self loadSongs];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [_xmlData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSXMLParser *myParser = [[NSXMLParser alloc] initWithData:_xmlData];
    [myParser setDelegate:self];
    [myParser parse];
    [[self tableView] reloadData];
    [self.refreshControl endRefreshing];
    [NSThread detachNewThreadSelector:@selector(spinEnd) toTarget:self withObject:nil];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    
//    NSString *xmlCheck = [[NSString alloc]initWithData:_xmlData encoding:NSUTF8StringEncoding];
//    NSLog(@"xmlCheck = %@", xmlCheck);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    [self.refreshControl endRefreshing];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    [NSThread detachNewThreadSelector:@selector(spinEnd) toTarget:self withObject:nil];
    _connectionInProgress = nil;
    _xmlData = nil;
    NSString *errorString = [NSString stringWithFormat:@"Fetch failed: %@", [error localizedDescription]];
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:errorString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [myAlert show];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    NSArray *myArray = [attributeDict allValues];
    if ([elementName isEqualToString:@"im:image"] && [myArray[0] isEqualToString:@"55"]) {
        NSLog(@"Found Image!");
        _correctSizeImageFound = YES;
        _titleString = [[NSMutableString alloc] init];
    }
    
    if ([elementName isEqual:@"title"] && ![_titleString isEqual:@"iTunes Store: Top Songs"]) {
        NSLog(@"Found Title!");
        _titleString = [[NSMutableString alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    [_titleString appendString:string];
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ([elementName isEqual:@"title"] && ![_titleString isEqual:@"iTunes Store: Top Songs"]) {
        NSLog(@"ended title: %@", _titleString);
        [_songsArray addObject:[NSString stringWithString:_titleString]];
        _titleString = nil;
    }
    if ([elementName isEqualToString:@"im:image"] && _correctSizeImageFound) {
        NSLog(@"ended image: %@", _titleString);
        [_imagesArray addObject:[NSString stringWithString:_titleString]];
        _titleString = nil;
        _correctSizeImageFound = NO;
    }
}

-(void)initSpinner {
    _cLoadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    CGPoint newCentre = (CGPoint) [self.view center];
    _cLoadingView.center = newCentre;
    [self.view addSubview:_cLoadingView];
}

-(void)spinBegin {
    [_cLoadingView startAnimating];
}

-(void)spinEnd {
    [_cLoadingView stopAnimating];
}

@end












