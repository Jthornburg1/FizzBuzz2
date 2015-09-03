//
//  BlackViewController.m
//  FizzBuzz
//
//  Created by jonathan thornburg on 9/1/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "BlackViewController.h"

@interface BlackViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation BlackViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView.text = @"In the debbuger, there is a number. It is the result of a function that takes an array of NSNumbers, adds them together, and prints their sum. Not very difficult, but I'm told it's a thing.";
    
    NSArray *numbersArray = @[@98, @2, @73, @0003, @7];
    
    [self addNumbersFromArray:numbersArray];
    
}

- (void)addNumbersFromArray:(NSArray *)array
{
    NSNumber *result = [NSNumber new];

    for (NSNumber *element in array) {
        result = [NSNumber numberWithInteger:([result integerValue] + [element integerValue])];
    }
    NSLog(@"%@", result);
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
