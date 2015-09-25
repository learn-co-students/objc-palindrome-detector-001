//  FISAppDelegate.m

#import "FISAppDelegate.h"
@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *middleEarthers = @[ @{ @"name"   : @"Bilbo"  ,
                                    @"age"    : @50       ,
                                    @"height" : @1.27     } ,
                                 @{ @"name"   : @"Thorin" ,
                                    @"age"    : @195      ,
                                    @"height" : @1.49     } ,
                                 @{ @"name"   : @"Balin"  ,
                                    @"age"    : @178      ,
                                    @"height" : @1.38     } ,
                                 @{ @"name"   : @"Dwalin" ,
                                    @"age"    : @169      ,
                                    @"height" : @1.50     } ,
                                 @{ @"name"   : @"Bifur"  ,
                                    @"age"    : @155      ,
                                    @"height" : @1.35     } ,
                                 
                                 @{ @"name"   : @"Bofur"  ,
                                    @"age"    : @155      ,
                                    @"height" : @1.45     } ,
                                 @{ @"name"   : @"Bombur" ,
                                    @"age"    : @155      ,
                                    @"height" : @1.35     } ,
                                 @{ @"name"   : @"Fíli"   ,
                                    @"age"    : @82       ,
                                    @"height" : @1.35     } ,
                                 @{ @"name"   : @"Kíli"   ,
                                    @"age"    : @77       ,
                                    @"height" : @1.43     } ,
                                 @{ @"name"   : @"Glóin"  ,
                                    @"age"    : @158      ,
                                    @"height" : @1.41     } ,
                                 
                                 @{ @"name"   : @"Óin"    ,
                                    @"age"    : @167      ,
                                    @"height" : @1.45     } ,
                                 @{ @"name"   : @"Dori"   ,
                                    @"age"    : @155      ,
                                    @"height" : @1.36     } ,
                                 @{ @"name"   : @"Ori"    ,
                                    @"age"    : @155      ,
                                    @"height" : @1.35     } ,
                                 @{ @"name"   : @"Gandalf",
                                    @"age"    : @2019     ,
                                    @"height" : @1.80     }
                                 ];
   
    
    NSPredicate *tallPredicate = [NSPredicate predicateWithFormat:@"height >= 1.45"];
    NSArray *tallCharacters = [middleEarthers filteredArrayUsingPredicate:tallPredicate];
    NSLog(@"%@",tallPredicate);
    
    for (NSDictionary *character in tallCharacters) {
        NSLog(@"%@ is %@ meters tall.", character[@"name"], character[@"height"]);
    }
    
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
