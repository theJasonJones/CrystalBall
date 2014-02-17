//
//  JJViewController.h
//  CrystalBall
//
//  Created by Jason Jones on 2/16/14.
//  Copyright (c) 2014 Jason Jones. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JJCrystalBall; //forward declaration

@interface JJViewController : UIViewController
//Changes message on label
@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;
//Crystal Ball implementation
@property (strong, nonatomic) JJCrystalBall *crystalBall;
- (IBAction)buttonPressed;

@end