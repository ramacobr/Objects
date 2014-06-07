//
//  main.m
//  Objects
//
//  Created by Rafael M Corrêa on 07/06/14.
//  Copyright (c) 2014 Rafael Corrêa. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* string = @"This string is Immutable";
        long lenString = [string length];
        NSLog(@"string length is %li", lenString);
        
        NSMutableString* string1;
        NSMutableString* string2;
        
        string1 = [NSMutableString stringWithString:@"This is a string"];
        string2 = [NSMutableString stringWithString:string1];
        [string2 appendString:@" and it is mine!"];
        NSLog(@"string1 = %@", string1);
        NSLog(@"string2 = %@", string2);
        
        string1 = [NSMutableString stringWithString:@"The quick brown fox jumped"];
        NSRange match = [string1 rangeOfString:@"brown fox"];
        NSLog(@"match found at index %lu", match.location);
        NSLog(@"match length %lu", match.length);
        
        NSRange matchDog = [string1 rangeOfString:@"brown dog"];
        if (matchDog.location == NSNotFound) {
            NSLog(@"Match not found");
        } else {
            NSLog(@"Match found at index %lu", matchDog.location);
        }
        
        [string1 replaceCharactersInRange:NSMakeRange(16, 3) withString:@"squirrel"];
//        [string1 replaceCharactersInRange:match withString:@"squirrel"];
        NSLog(@"string1 = %@", string1);
        [string1 replaceCharactersInRange:[string1 rangeOfString:@"brown squirrel"] withString:@"black dog"];
        NSLog(@"string1 = %@", string1);
        [string1 deleteCharactersInRange:[string1 rangeOfString:@"jumped"]];
        NSLog(@"string1 = %@", string1);
        
        if ([string1 isEqualToString:string2]) {
            NSLog(@"o conteúdo da string1 é igual ao da string2");
        } else
            NSLog(@"o conteúdo da string1 é diferente da string2");
        
        if ([string1 hasPrefix:@"The"])
            NSLog(@"string1 tem o prefixo \"The\"");
        else
            NSLog(@"string1 não tem o prefixo \"The\"");
        
        if ([string1 hasSuffix:@"dog"])
            NSLog(@"string1 tem o sufixo \"dog\"");
        else
            NSLog(@"string1 não tem o sufixo \"dog\"");
        
        NSLog(@"string1 = %@", [string1 capitalizedString]);
        NSLog(@"string1 = %@", [string2 lowercaseString]);
        NSLog(@"string1 = %@", [string2 uppercaseString]);
        
        NSNumber* myFloat;
        float fValue;
        myFloat = [NSNumber numberWithDouble:10.009];
        fValue = myFloat.floatValue;
        NSLog(@"value = %f", fValue);
        
        NSNumber* myFloat2;
        myFloat2 = [NSNumber numberWithFloat:myFloat.floatValue + 1.02];
        
        if ([myFloat isEqualToNumber:myFloat2]) {
            NSLog(@"myFloat is equal to myFloat2");
        } else {
            NSLog(@"myFloat is not equal to myFloat2");
        }
        
        NSComparisonResult result;
        result = [myFloat compare: myFloat2];
        if (result == NSOrderedSame) {
            NSLog(@"Numbers are equal");
        } else if (result == NSOrderedAscending) {
            NSLog(@"Float1 is less than float2");
        } else if (result == NSOrderedDescending) {
            NSLog(@"Float1 is greater than float2");
        }
        
        NSString* myString = [myFloat stringValue];
        NSLog(@"Number as string is %@", myString);
    }
    return 0;
}

