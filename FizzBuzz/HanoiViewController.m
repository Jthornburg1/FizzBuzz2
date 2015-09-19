//
//  HanoiViewController.m
//  FizzBuzz
//
//  Created by jonathan thornburg on 9/8/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "HanoiViewController.h"

@interface HanoiViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation HanoiViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView.text = @"Towers Of Hanoi\n\nThis is a math and logic puzzle: There are 3 pegs. The first has any given number of rings around it of increasing diameter. They are arranged in a cone. The task is to get them all onto the third peg in the same 'cone' formation. There are 2 stipulations: You can only move 1 ring at a time, and you may not place a larger ring on top of a smaller one.";
    
    
    int from = 1;
    int to = 3;
    int via = 2;
    int disks = 3;
    
    [self movePegFrom:from andMovePegTo:to andMovePegVia:via andWithNumDisks:disks];
}

-(void)movePegFrom:(int)from andMovePegTo:(int)to andMovePegVia:(int)via andWithNumDisks:(int)disks
{
    if (disks == 1) {
        NSLog(@"Move disk from tower %d to tower %d", from, to);
    }else{
        [self movePegFrom:from andMovePegTo:via andMovePegVia:to andWithNumDisks:disks - 1];
        [self movePegFrom:from andMovePegTo:to andMovePegVia:via andWithNumDisks:1];
        [self movePegFrom:via andMovePegTo:to andMovePegVia:from andWithNumDisks:disks - 1];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
