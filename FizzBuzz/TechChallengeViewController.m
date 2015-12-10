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
    
    NSArray *arbitraryNumbers = @[@2,@8,@4, @2, @8, @7, @4, @2, @5, @3, @3, @3, @3, @3];
    
    [self graphFromArbitraryNumbersArray:arbitraryNumbers];
    
    self.textView.text = @"WillowTree asked me to create a function that, given an arbitrary array of integers as input, gives a 'graph' as output. by 'graph' they meant on one line print each different integer that occurs in the array and, above each integer, print a column of stars with one star for each time the integer below occurs in the array.";

}

- (void)graphFromArbitraryNumbersArray:(NSArray *)array
{
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    
    for (NSNumber *num in array) {
        
        // If key already exists increment its value by 1.
        if ([dictionary objectForKey:num]) {
            NSInteger number = [[dictionary objectForKey:num] integerValue];
            number+=1;
            [dictionary setObject:[NSNumber numberWithInteger:number] forKey:num];
        }else{
            
            // If it doesn't exist, make it and set its value to 1.
            [dictionary objectForKey:num];
            [dictionary setObject:[NSNumber numberWithInteger:1] forKey:num];
        }
    }
    
    // Find the highest number of all the dictionaries values (number of stars)
    // Also each numbers index in "allValues"
    NSInteger highestNumber = 0;
    NSInteger indexNumber = 0;
    
    for (NSNumber *number in [dictionary allValues]) {
        if ([number integerValue] > highestNumber ) {
            highestNumber = [number integerValue];
        }
        indexNumber = [[dictionary allValues] indexOfObject:number];
    }
    
    
// Print Strings with stars.
    NSMutableString *starMutString = [NSMutableString new];
    NSString *starString = [NSString new];
    NSInteger i = highestNumber;
    for (i = highestNumber; i > 0; i--) {
        for (NSNumber *index in [dictionary allValues]) {
            if (!([index integerValue] == i)) {
                [starMutString appendString:@""];
            }else{
                [starMutString appendString:@"*"];
            }
        }
        starString = starMutString;
        NSLog(starString);
    }
    
    
    NSMutableString *nums = [NSMutableString new];
    for (NSNumber *key in [dictionary allKeys]) {
        [nums appendString:[key description]];
    }
    
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
