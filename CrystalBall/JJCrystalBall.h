//
//  JJCrystalBall.h
//  CrystalBall
//
//  Created by Jason Jones on 2/16/14.
//  Copyright (c) 2014 Jason Jones. All rights reserved.
//

#import <Foundation/Foundation.h>
//Check if the predictions array is set to nil
//If so, initalize the array with the responses
//Returns: the array of strings
@interface JJCrystalBall : NSObject{
    NSArray *_predictions;
}

//Sets a variable with a random number
//Resturns: Returns the random number
- (NSString *) randomPrediction;
@property(nonatomic, strong, readonly) NSArray *predictions;
@end
