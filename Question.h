//
//  Question.h
//  NNAT2
//
//  Created by Eugene Watson on 4/11/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (strong, nonatomic) NSString *fileName;
@property (strong, nonatomic) NSArray  *answers;


-(instancetype) initWithFileName: (NSString *) fileName answers: (NSArray *) answers;

@end
