//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array
{
    NSMutableArray *arrayAddString = [array mutableCopy];
    [arrayAddString addObject:string];
    return arrayAddString;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array
{
//        NSMutableArray *uppercaseStrings = [[NSMutableArray alloc]init];
//        NSUInteger countOfUppercaseStrings = [uppercaseStrings count];
    NSUInteger countOfUppercaseStrings = 0;
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *string = array[i];
        NSString *uppercaseString = [string uppercaseString];
        if ([string isEqualToString:uppercaseString]) {
            countOfUppercaseStrings += 1;
        }
    }
    return countOfUppercaseStrings;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array
{
    [array removeAllObjects];
}

@end
