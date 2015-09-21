//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    NSLog(@"%@, %@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    bool racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@",racecarIsPalindrome, racecar);
    
    NSString *bob = @"never odd or even";
    bool bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@",bobIsPalindrome, bob);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    bool fleeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@",fleeIsPalindrome,fleeToMe);
    
    return YES;
}


- (BOOL)stringIsPalindrome:(NSString *)string{
    NSArray *punctuations = @[@".",@",",@"!",@"?",@":",@";"];
   
    for (NSUInteger i =0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        string = [string stringByReplacingOccurrencesOfString:punctuation withString:@""];
        
    }
    
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *reverse = [self stringByReversingString:string];
    reverse = [reverse lowercaseString];
    string = [string lowercaseString];
    
    BOOL stringIsEqualToReverse = [reverse isEqualToString:string];
    
    
    return stringIsEqualToReverse;
}


- (NSString *)stringByReversingString:(NSString *)string{
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length];i>0; i--) {
        NSUInteger index = i-1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C",c];
    }
    return result;
}




@end
