//
//  PuzzleGame.h
//  NNAT2
//
//  Created by Eugene Watson on 4/17/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "Answer.h"

@interface PuzzleGame : NSObject

-(Question *)drawQuestion;

-(BOOL) selectAnswer: (Answer *)answer;


@end
