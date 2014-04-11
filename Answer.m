//
//  Answer.m
//  NNAT2
//
//  Created by Eugene Watson on 4/11/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import "Answer.h"

@implementation Answer

-(instancetype) initWithFileName: (NSString *) fileName isCorrect: (BOOL) isCorrect

{
    self = [super init];
    if (self) {
        _fileName = fileName;
        _correct = isCorrect;
    }
    return self;
    
}

@end
