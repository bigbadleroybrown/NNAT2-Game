//
//  Answer.h
//  NNAT2
//
//  Created by Eugene Watson on 4/11/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Answer : NSObject

@property (strong, nonatomic) NSString *fileName;
@property (nonatomic, getter = isCorrect) BOOL correct;

-(instancetype) initWithFileName: (NSString *) fileName isCorrect: (BOOL) isCorrect;

@end
