//
//  TechChallengeViewController.m
//  FizzBuzz
//
//  Created by jonathan thornburg on 9/3/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "TechChallengeViewController.h"

@interface TechChallengeViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation TechChallengeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arbitraryNumbers = @[@2,@8,@4, @2, @8, @7, @4, @2, @5];
    
    [self graphFromArbitraryNumbersArray:arbitraryNumbers];
    
    self.textView.text = @"WillowTree asked me to create a function that, given an arbitrary array of integers as input, gives a 'graph' as output. by 'graph' they meant on one line print each Different integer that occurs in the array and, above each integer, print a column of stars with one star for each time the integer below occurs in the array.";

}

- (void)graphFromArbitraryNumbersArray:(NSArray *)array
{
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    
    for (NSNumber *num in array) {
        if ([dictionary objectForKey:num]) {
            NSInteger number = [[dictionary objectForKey:num] integerValue];
            number+=1;
            [dictionary setObject:[NSNumber numberWithInteger:number] forKey:num];
        }else{
            [dictionary objectForKey:num];
            [dictionary setObject:[NSNumber numberWithInteger:1] forKey:num];
        }
    }
    NSMutableString *nums = [NSMutableString new];
    for (NSNumber *key in [dictionary allKeys]) {
        [nums appendString:[key description]];
    }
    NSMutableArray *valuesArray = [NSMutableArray new];
    NSLog(@"%@", nums);
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
