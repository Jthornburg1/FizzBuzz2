//
//  BlueViewController.m
//  FizzBuzz
//
//  Created by jonathan thornburg on 7/25/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "PurpleViewController.h"

@interface PurpleViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation PurpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.text = @"Classic, easy coding challenge: FizzBuzz.\n\nIterate through the numbers 1-100. If a number is divisible by 3, print 'Fizz', if a number is divisible by 5, print 'Buzz', and if a number is divisible by both 3 and 5, print 'FizzBuzz.'";
    
    for (int i = 1; i <= 100; i++) {
        if ((i % 3 == 0) && (i % 5 == 0)) {
            NSLog(@"FizzBuzz");
        }else if (i % 3 == 0){
            NSLog(@"Fizz");
        }else if (i % 5 == 0){
            NSLog(@"Buzz");
        }else{
            NSLog(@"%d", i);
        }
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
