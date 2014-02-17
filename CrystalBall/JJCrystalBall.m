//
//  JJCrystalBall.m
//  CrystalBall
//
//  Created by Jason Jones on 2/16/14.
//  Copyright (c) 2014 Jason Jones. All rights reserved.
//

#import "JJCrystalBall.h"

@implementation JJCrystalBall

//Check if the predictions array is set to nil
//If so, initalize the array with the responses
//Returns: the array of strings
- (NSArray *) predictions{
    if (_predictions == nil){
        _predictions = [[NSArray alloc] initWithObjects:@"It is certain.",
                        @"It is decidedly so..",
                        @"It is doubtful",
                        @"Better not tell you now",
                        @"The stars not aligned",
                        @"Concentrate and ask again",
                        @"Unable to answer now",
                        nil];
    }
    
    return _predictions;
}

//Sets a variable with a random number
//Resturns: Returns the random number
- (NSString *) randomPrediction{
    int random = arc4random_uniform(self.predictions.count);
    
    return [self.predictions objectAtIndex: random];
}
@end
