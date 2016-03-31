//
//  ViewController.m
//  Inline Date Picker
//
//  Created by Elena Maso Willen on 31/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSArray *myToDoList;
@property (strong, nonatomic) NSMutableArray *myDates;

@property (strong, nonatomic) NSIndexPath *datePickerIndexPath;
@property BOOL hasInlinePicker;

- (IBAction)dateAction:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myToDoList = @[@"First Item", @"Second Item", @"Third Item", @"Fourth Item"];
    self.myDates = [@[[NSDate date], [NSDate date], [NSDate date], [NSDate date]] mutableCopy];

    self.hasInlinePicker = NO;
    self.datePickerIndexPath = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.hasInlinePicker) {
        return [self.myToDoList count]+1;
    }
    return [self.myToDoList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *myCellIdentifier = @"basicCell";
    if (self.hasInlinePicker) {
        if ((indexPath.row == self.datePickerIndexPath.row +1))
            myCellIdentifier = @"datePicker";
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myCellIdentifier];
    if ([myCellIdentifier isEqualToString:@"basicCell"]) {
        cell.textLabel.text = self.myToDoList[indexPath.row];
        NSDateFormatter *myDateFormatter = [[NSDateFormatter alloc] init];
        [myDateFormatter setTimeZone:[NSTimeZone defaultTimeZone]];
        [myDateFormatter setDateFormat:@"MMM dd, yyyy HH:mm"];
        NSString *message = [myDateFormatter stringFromDate:self.myDates[indexPath.row]];
        cell.detailTextLabel.text = message;
    }
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (_hasInlinePicker) {
        if (indexPath.row == _datePickerIndexPath.row +1)
            return 162;
    }
    return 44;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if ([cell.reuseIdentifier isEqualToString:@"basicCell"]) {
        [self displayInlineDatePickerForRowAtIndePath:indexPath];
    } else {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

-(void)displayInlineDatePickerForRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.myTableView beginUpdates];
    if (!self.hasInlinePicker) {
        NSArray *indexPaths = @[[NSIndexPath indexPathForRow:indexPath.row +1 inSection:0]];
        [self.myTableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
        self.hasInlinePicker = YES;
        self.datePickerIndexPath = indexPath;
    }else if (_hasInlinePicker && self.datePickerIndexPath.row == indexPath.row){
        NSArray *indexPaths = @[[NSIndexPath indexPathForRow:indexPath.row +1 inSection:0]];
        [self.myTableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
        self.hasInlinePicker = NO;
        self.datePickerIndexPath = nil;
    }
    [self.myTableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.myTableView endUpdates];
    
}


- (IBAction)dateAction:(id)sender {
}
@end









