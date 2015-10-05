//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *wordToTest = @"I prefer pi!";
    BOOL isPalindrome = [self stringIsPalindrome:wordToTest];
    NSLog(@"%d : %@", isPalindrome, wordToTest);
    
    wordToTest = @"this is not a palindrome.";
    isPalindrome = [self stringIsPalindrome:wordToTest];
    NSLog(@"%d : %@", isPalindrome, wordToTest);
    
    wordToTest = @"NEVER odd or eVen,!";
    isPalindrome = [self stringIsPalindrome:wordToTest];
    NSLog(@"%d : %@", isPalindrome, wordToTest);
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {

    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }

    NSString *lowercaseString = [withoutPunctuation lowercaseString];
    NSString *lowercaseStringWithoutSpaces = [lowercaseString stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *reversed = [self stringByReversingString:lowercaseStringWithoutSpaces];
   
    BOOL stringIsEqualToReverse = [lowercaseStringWithoutSpaces isEqualToString:reversed];
    
    return stringIsEqualToReverse;
}


- (NSString *)stringByReversingString:(NSString *)string {
    NSString *reversedString = @"";

    for (NSUInteger i = [string length]; i > 0; i--) {
        reversedString = [reversedString stringByAppendingFormat:@"%C", [string characterAtIndex:i-1]];
    }
    
    return reversedString;
}

@end
