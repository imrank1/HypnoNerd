//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Imran Khawaja on 7/27/14.
//  Copyright (c) 2014 imrankhawaja. All rights reserved.
//

#import "BNRReminderViewController.h"

@implementation BNRReminderViewController

- (IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for time: %@", date);
    
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.alertBody = @"Hypnotize me!";
    notification.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        self.tabBarItem.title = @"Reminder";
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        self.tabBarItem.image = image;
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}
@end
