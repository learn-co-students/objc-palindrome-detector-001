//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *racecar = @"racecar";
    NSLog(@"%d: %@", [self stringIsPalindrome:racecar], racecar);
    
    NSString *bob = @"Bob";
    NSLog(@"%d: %@", [self stringIsPalindrome:bob], bob);
    
    NSString *kanakanak = @"Kanakanak";
    NSLog(@"%d: %@", [self stringIsPalindrome:kanakanak], kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    NSLog(@"%d: %@", [self stringIsPalindrome:aibohphobia], aibohphobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    NSLog(@"%d: %@", [self stringIsPalindrome:notAPalindrome], notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    NSLog(@"%d: %@", [self stringIsPalindrome:neverOdd], neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    NSLog(@"%d: %@", [self stringIsPalindrome:iPreferPi], iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    NSLog(@"%d: %@", [self stringIsPalindrome:fleeToMe], fleeToMe);

    NSString *norma = @"Norma is as selfless as I am, Ron.";
    NSLog(@"%d: %@", [self stringIsPalindrome:norma], norma);

    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    NSLog(@"%d: %@", [self stringIsPalindrome:papayaWar], papayaWar);

    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";", @" "];
    for (NSUInteger i = 0; i < [punctuations count]; ++i) {
        string = [string stringByReplacingOccurrencesOfString:punctuations[i] withString:@""];
    }
    string = [string lowercaseString];
    return [string isEqualToString:[self stringByReversingString:string]];
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    for (NSUInteger i = [string length]; i > 0; --i) {
        unichar c = [string characterAtIndex:i - 1];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end
