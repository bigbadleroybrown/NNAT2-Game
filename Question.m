//
//  Question.m
//  NNAT2
//
//  Created by Eugene Watson on 4/11/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype) initWithFileName: (NSString *) fileName answers: (NSArray *) answers

{
    self = [super init];
    if (self) {
        _fileName = fileName;
        _answers  = answers;
    }
    return self;
    
}

@end
