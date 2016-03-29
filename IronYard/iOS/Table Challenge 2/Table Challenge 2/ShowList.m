//
//  ShowList.m
//  Table Challenge 2
//
//  Created by Elena Maso Willen on 29/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ShowList.h"
#import "CharacterList.h"

@interface ShowList ()

@end

@implementation ShowList

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle *myBundle = [NSBundle mainBundle];
    NSString *plistPath = [myBundle pathForResource:@"shows-characters" ofType:@"plist"];
    self.showsCharacters = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSArray *allkeys = [self.showsCharacters allKeys];
    NSArray *sortedKeys = [allkeys sortedArrayUsingSelector:@selector(compare:)];
    self.shows = sortedKeys;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return [_shows count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"showCell" forIndexPath:indexPath];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_shows[indexPath.row] forIndexPath:indexPath];
    UILabel *cellLabel = [cell viewWithTag:1];
    cellLabel.text = _shows[indexPath.row];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CharacterList *destination = segue.destinationViewController;
    NSIndexPath *indexPath = (NSIndexPath *) sender;
    destination.characters = [self.showsCharacters objectForKey:_shows[indexPath.row]];
    destination.identifier = _shows[indexPath.row];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"hi");
    [self performSegueWithIdentifier:@"VCSegue" sender:indexPath];
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
