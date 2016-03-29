//
//  ControlCell.m
//  More Tables
//
//  Created by Elena Maso Willen on 29/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ControlCell.h"

@interface ControlCell ()

- (IBAction)coloursSwitch:(id)sender;

@property (nonatomic, strong) NSArray *myList;

@end

@implementation ControlCell

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myList = @[@"Red", @"Green", @"Blue", @"Yellow"];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colourCell" forIndexPath:indexPath];
    
    UILabel *cellLabel = (UILabel *)[cell viewWithTag:1];
    cellLabel.text = self.myList[indexPath.row];
    return cell;
}


- (IBAction)coloursSwitch:(id)sender {
    UISwitch *selectedSwitch = (UISwitch *)sender;
    CGPoint switchPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:switchPosition];
    UITableViewCell *myCell = [self.tableView cellForRowAtIndexPath:indexPath];
    
    switch ([indexPath row]) {
            case 0:
            //Red
            if (selectedSwitch.isOn) {
                [myCell setBackgroundColor:[UIColor redColor]];
            } else {
                [myCell setBackgroundColor:[UIColor clearColor]];
            }
            break;
            case 1:
            //Green
            if (selectedSwitch.isOn) {
                [myCell setBackgroundColor:[UIColor greenColor]];
            } else {
                [myCell setBackgroundColor:[UIColor clearColor]];
            }
            break;
            case 2:
            //Blue
            if (selectedSwitch.isOn) {
                [myCell setBackgroundColor:[UIColor blueColor]];
            } else {
                [myCell setBackgroundColor:[UIColor clearColor]];
            }
            break;
            case 3:
            //Yellow
            if (selectedSwitch.isOn) {
                [myCell setBackgroundColor:[UIColor yellowColor]];
            } else {
                [myCell setBackgroundColor:[UIColor clearColor]];
            }
            break;
    }
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];

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
