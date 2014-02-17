//
//  JJViewController.m
//  CrystalBall
//
//  Created by Jason Jones on 2/16/14.
//  Copyright (c) 2014 Jason Jones. All rights reserved.
//

#import "JJViewController.h"
#import "JJCrystalBall.h"

@interface JJViewController ()

@end

@implementation JJViewController

//Loads the Crystal Ball view
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.crystalBall = [[JJCrystalBall alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Checks for the button to pressed then class the randomPrediction function
- (IBAction)buttonPressed {
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

//Resets the message when the user shakes the phone again
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    self.predictionLabel.text = nil;
}

//Triggers the randomPrediction function once the phone is shook
- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if ( motion == UIEventSubtypeMotionShake){
        self.predictionLabel.text = [self.crystalBall randomPrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //NSLog(@"Motion cancelled");
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.predictionLabel.text = nil;
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

@end
