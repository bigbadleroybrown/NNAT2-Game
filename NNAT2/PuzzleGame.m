//
//  PuzzleGame.m
//  NNAT2
//
//  Created by Eugene Watson on 4/17/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import "PuzzleGame.h"
#import "Answer.h"
#import "Question.h"

@interface PuzzleGame ()

@property (strong, nonatomic) NSMutableArray *mutableQuestions;
@property (strong, nonatomic) Question *drawnQuestion;

@end

@implementation PuzzleGame



-(id)init
{
    self = [super init];
    if (self)
    {
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"PuzzleTest" ofType:@"plist"];
        NSArray *questionsDictionarys = [NSArray arrayWithContentsOfFile:plistPath];
        
        NSMutableArray *questionsObjects = [[NSMutableArray alloc] init];
        
        for (NSDictionary *questionDictionary in questionsDictionarys) {
            NSMutableArray *answerObjects = [[NSMutableArray alloc] init];
            
            for (NSDictionary *answerDictionary in questionDictionary [@"Answers"]) {
                Answer *answer = [[Answer alloc] initWithFileName:answerDictionary [@"fileName"] isCorrect: [answerDictionary [@"isCorrect"] boolValue]];
                [answerObjects addObject:answer];
            }
            
            Question *question = [[Question alloc]initWithFileName: questionDictionary [@"fileName"] answers: answerObjects];
            
            [questionsObjects addObject:question];
            
        }
        self.mutableQuestions = questionsObjects;
    }
    return self;
}


-(Question *)drawQuestion
{
    
    NSInteger r = arc4random_uniform([self.mutableQuestions count]);
    
    Question *question = self.mutableQuestions [r];
    
    [self.mutableQuestions removeObject:question];

    self.drawnQuestion = question;
    
    return question;

}

-(BOOL) selectAnswer: (Answer *)answer
{
    return answer.isCorrect;
}





@end
