//
//  BNRHypnosisViewController.h
//  HypnoNerd
//
//  Created by Imran Khawaja on 7/27/14.
//  Copyright (c) 2014 imrankhawaja. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRHypnosisViewController : UIViewController

@property (nonatomic,weak) IBOutlet UISegmentedControl *colorControl;

- (IBAction)selectColor:(id)sender;
@end
