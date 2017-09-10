//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    NSString *palindrome = @"palindrome";
    NSString *racecar = @"racecar";


    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    
    NSLog(@"%@ : %d", palindrome, palindromeIsPalindrome);
    NSLog(@"%@ : %d", racecar, racecarIsPalindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%@ : %d", bob, bobIsPalindrome);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%@ : %d", kanakanak, kanakanakIsPalindrome);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%@ : %d", aibohphobia, aibohphobiaIsPalindrome);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

-(NSString *)stringByReversingString:(NSString *)string{
   
    NSString *result = @"";
    for (NSUInteger i = [string length]; i>0; i--) {
        unichar c = [string characterAtIndex:i-1];
       result= [result stringByAppendingString:[NSString stringWithFormat:@"%C",c]];
        
    }
    
    
    return result;
}

-(BOOL)stringIsPalindrome:(NSString *)string{
   
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    
    NSString *withoutPunctuation = [string copy];
    for (NSUInteger i = 0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
        
    }
    
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reversed = [self stringByReversingString:lowercase];
    
   
    
    BOOL isEqualToReversed = [lowercase isEqualToString:reversed];
    
    return isEqualToReversed;
        
}

@end
