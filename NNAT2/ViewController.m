//
//  ViewController.m
//  NNAT2
//
//  Created by Eugene Watson on 4/11/14.
//  Copyright (c) 2014 Eugene Watson. All rights reserved.
//

#import "ViewController.h"
#import "PuzzleGame.h"
#import "Question.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *answerA;
@property (weak, nonatomic) IBOutlet UIButton *answerB;
@property (weak, nonatomic) IBOutlet UIButton *answerC;
@property (weak, nonatomic) IBOutlet UIButton *answerD;
@property (weak, nonatomic) IBOutlet UIButton *answerE;
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;

@property (strong, nonatomic) PuzzleGame *game;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.game =[[PuzzleGame alloc] init];
    
    Question *myQuestion = [self.game drawQuestion];
    
    self.mainImage.image = [UIImage imageNamed:myQuestion.fileName];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
