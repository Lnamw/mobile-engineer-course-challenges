//
//  TodoTable.m
//  To Do List Challenge
//
//  Created by Elena Maso Willen on 08/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "TodoTable.h"

@interface TodoTable ()

@property (strong, nonatomic) NSMutableArray *toDoList;
-(IBAction)addItem:(id)sender;

@property (nonatomic, strong) NSMutableArray *marks;

-(IBAction)toggleEdit:(id)sender;



@end

@implementation TodoTable

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.toDoList = [[NSMutableArray alloc] initWithCapacity:0];
    self.toDoList = [@[@"Cooking", @"Do your Labs"] mutableCopy];
    
    UIBarButtonItem *addItemButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem:)];
    self.navigationItem.rightBarButtonItem = addItemButton;
    
    self.marks = [[NSMutableArray alloc] initWithCapacity:0];
    for (int x = 0; x < [self.toDoList count]; x++) {
        [self.marks addObject:[NSNumber numberWithBool:NO]];
    }
    
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStylePlain target:self action:@selector(toggleEdit:)];
    self.navigationItem.leftBarButtonItem = editButton;
    
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.toDoList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoListCell" forIndexPath:indexPath];
    NSUInteger row = [indexPath row];
    cell.textLabel.text = self.toDoList[row];
    
//    if ([[self.marks objectAtIndex:indexPath.row] boolValue]) {
//        cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    } else {
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }
    return cell;
}




-(IBAction)addItem:(id)sender {
    
    
    UIAlertController *addItemPrompt = [UIAlertController alertControllerWithTitle:@"Add Item" message:@"Add Item to your To Do List" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        UITextField *newItem = addItemPrompt.textFields[0];
        NSString *newItemName = newItem.text;
        [self.toDoList addObject:newItemName];
        
        [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:self.toDoList.count -1 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
//        
//        TodoTable *newItem = [TodoTable new];
//        newItem.title = addItemPrompt.textFields[0].text;
//        [self.toDoList addObject:newItem];
//        [self.tableView reloadData];

    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
    }];
    
    [addItemPrompt addAction:ok];
    [addItemPrompt addAction:cancel];
    
    [addItemPrompt addTextFieldWithConfigurationHandler:^(UITextField *textField) {
    }];
    
    [self presentViewController:addItemPrompt animated:YES completion:nil];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    if ([[self.marks objectAtIndex:indexPath.row] boolValue]) {
//        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
//        newCell.accessoryType = UITableViewCellAccessoryNone;
//    } else {
//        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
//        newCell.accessoryType = UITableViewCellAccessoryCheckmark;
//    }
//    bool currentBool = [[self.marks objectAtIndex:indexPath.row] boolValue];
//    self.marks[indexPath.row] = [NSNumber numberWithBool:!currentBool];
}


-(IBAction)toggleEdit:(id)sender {
    [self.tableView setEditing:!self.tableView.editing animated:YES];
    if (self.tableView.editing) {
        [self.navigationItem.leftBarButtonItem setTitle:@"Done"];
    } else {
        [self.navigationItem.leftBarButtonItem setTitle:@"Delete"];
    }
}






//-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
//}
//
//-(void)buttonClicked:(UIAlertControllerStyle) NSInteger {
//    UIAlertControllerStyleActionSheet =
//}
//
//
//typedef enum UIAlertControllerStyle: NSInteger {
//    UIAlertControllerStyleActionSheet = 0,
//    UIAlertControllerStyleAlert
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.toDoList removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
    }
}


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
