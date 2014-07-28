//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Imran Khawaja on 7/27/14.
//  Copyright (c) 2014 imrankhawaja. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = image;
    }
    return self;
}

- (IBAction)selectColor:(id)sender {
    UISegmentedControl *colorSelecter = (UISegmentedControl *)sender;
    int color = [colorSelecter selectedSegmentIndex];
    [self setCircleColors:color];
}

- (void) setCircleColors:(int) indexSelected {
    BNRHypnosisView *circlesView = (BNRHypnosisView *) self.view;
    switch (indexSelected) {
        case 0:
            circlesView.circleColor = [UIColor redColor];
            break;
        case 1:
            circlesView.circleColor = [UIColor greenColor];
            break;
        case 2:
            circlesView.circleColor = [UIColor blueColor];
            break;
        default:
            break;
    }
}
@end
