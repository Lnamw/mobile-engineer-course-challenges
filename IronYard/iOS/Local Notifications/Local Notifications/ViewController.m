//
//  ViewController.m
//  Local Notifications
//
//  Created by Elena Maso Willen on 31/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *eventText;
- (IBAction)scheduleEvent:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationEnteredForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger rows = [[[UIApplication sharedApplication]scheduledLocalNotifications]count];
    NSLog(@"rows is %lu", (long)rows);
    rows = [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
    NSLog(@"Again rows is %lu", (long)rows);
    return rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *myCellIdentifier = @"basicCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myCellIdentifier];
    //Get list of local notifications
    NSArray *listOfNotifications = [[UIApplication sharedApplication] scheduledLocalNotifications];
    UILocalNotification *myNotification = listOfNotifications[indexPath.row];
    
    //Display notification info
    cell.textLabel.text = myNotification.alertBody;
    NSDateFormatter *myDateFormtter = [[NSDateFormatter alloc] init];
    [myDateFormtter setTimeZone:[NSTimeZone defaultTimeZone]];
    [myDateFormtter setDateFormat:@"MMM dd, yyyy HH:mm:ss"];
    
    NSString *message = [myDateFormtter stringFromDate:myNotification.fireDate];
    cell.detailTextLabel.text = message;
    
    return cell;
}

- (IBAction)scheduleEvent:(id)sender {
    [self.eventText resignFirstResponder];
    
    UIUserNotificationSettings *currentSettings = [[UIApplication sharedApplication] currentUserNotificationSettings];
    if (currentSettings.types & UIUserNotificationTypeAlert) {
        NSLog(@"Notifications enabled %@", currentSettings);
    
    //Get the current date
    NSDate *selectedDate = [self.myDatePicker date];
    
    UILocalNotification *myLocalNotification = [[UILocalNotification alloc] init];
    if (myLocalNotification == nil)
        return;
    myLocalNotification.fireDate = selectedDate;
    myLocalNotification.timeZone = [NSTimeZone defaultTimeZone];
    
    //Notification details
    myLocalNotification.alertBody = self.eventText.text;
    
    //Set the action button
    myLocalNotification.alertAction = @"View";
    
    //Increment the badge by 1
    myLocalNotification.soundName = UILocalNotificationDefaultSoundName;
    myLocalNotification.applicationIconBadgeNumber = [[[UIApplication sharedApplication] scheduledLocalNotifications] count]+1;
    
    //Schedule the notification
    [[UIApplication sharedApplication] scheduleLocalNotification:myLocalNotification];
    } else {
        NSLog(@"Notifications disabled %@", currentSettings);
    }
    [self.myTableView reloadData];
    self.eventText.text = @"";
}

- (void)applicationEnteredForeground:(NSNotification *)notification {
    NSLog(@"Application Entered Foreground");
    [self.myTableView reloadData];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end










