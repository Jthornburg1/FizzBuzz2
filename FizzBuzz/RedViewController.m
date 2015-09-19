//
//  InitialViewController.m
//  FizzBuzz
//
//  Created by jonathan thornburg on 7/25/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.text = @"Look down at the debugging console for a comma-separated list of prime numbers. The upper limit of those numbers can be changed in the viewDidLoad method of RedViewController class.";
    
    [self primeArrayFromBeneathMax:100];

}

- (BOOL)isPrime:(int)num
{
    for (int i = 2; i < (num / 2) + 1; i++) {
        if (num % i == 0) {
            
            return NO;
        }
    }
    return YES;
}

- (NSArray *)primeArrayFromBeneathMax:(int)max
{
    NSMutableArray *growingArray = [NSMutableArray new];
    NSArray *primeArray = [NSArray new];
    
    for (int i = 2; i <= max; i++) {
        if ([self isPrime:i] == YES) {
            [growingArray addObject:[NSNumber numberWithInt:i]];
        }
    }
    primeArray = growingArray;
    NSLog(@"%@", primeArray);
    return primeArray;
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
