//
//  CharacterList.m
//  Table Challenge
//
//  Created by Elena Maso Willen on 24/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "CharacterList.h"
#import "ShowList.h"


@interface CharacterList ()

@property (strong, nonatomic) NSDictionary *showsCharacters;
@property (strong, nonatomic) NSArray *shows;
@property (strong, nonatomic) NSArray *characters;

@end

@implementation CharacterList

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle *myBundle = [NSBundle mainBundle];
    NSString *plistPath = [myBundle pathForResource:@"shows-characters" ofType:@"plist"];
    self.showsCharacters = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSArray *allKeys = [self.showsCharacters allKeys];
    NSArray *sortedKeys = [allKeys sortedArrayUsingSelector:@selector(compare:)];
    self.shows = sortedKeys;
    
    NSString *selectedShow = self.shows[0];
    self.characters = [self.showsCharacters objectForKey:selectedShow];
    
    
    
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
    return [_characters count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"characterCell" forIndexPath:indexPath];
    
    UILabel *characterCellLabel = [cell viewWithTag:2];
    characterCellLabel.text = _characters[indexPath.row];
    
    return cell;
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    CharacterList *destination = segue.destinationViewController;
//    if ([destination respondsToSelector:@selector(setSelectedShow:)]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
//        destination.selectedShow = _shows[indexPath.row];
//    }
//}




//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//    NSString *selectedShow = self.shows[indexPath.row];
//    self.characters = [self.showsCharacters objectForKey:selectedShow];
//}


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
