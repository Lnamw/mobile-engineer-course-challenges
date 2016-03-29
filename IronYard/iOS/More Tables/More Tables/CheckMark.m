//
//  CheckMark.m
//  More Tables
//
//  Created by Elena Maso Willen on 29/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "CheckMark.h"

@interface CheckMark ()

@property (nonatomic, strong) NSArray *myList;
@property (nonatomic, strong) NSMutableArray *marks;

@end

@implementation CheckMark

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myList = @[@"Arsenal", @"Aston Villa", @"Burnley", @"Chelsea", @"C Palace", @"Everton", @"Hull", @"Leicester", @"Liverpool", @"Mancherster City", @"Manchester United", @"Newcastle", @"Queens Park Rangers", @"Southampton", @"Stoke", @"Sunderland", @"Swansea", @"Spurs", @"West Brom", @"West Ham"];

    _marks = [[NSMutableArray alloc] initWithCapacity:0];
    for (int x = 0; x < [_myList count]; x++) {
        [_marks addObject:[NSNumber numberWithBool:NO]];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.myList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"checkMarkCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.myList[indexPath.row];
    
    if ([[_marks objectAtIndex:indexPath.row] boolValue]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([[_marks objectAtIndex:indexPath.row] boolValue]) {
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
        newCell.accessoryType = UITableViewCellAccessoryNone;
    } else {
        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
        newCell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    bool currentBool = [[_marks objectAtIndex:indexPath.row] boolValue];
    _marks[indexPath.row] = [NSNumber numberWithBool:!currentBool];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
