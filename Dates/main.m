//
//  main.m
//  Dates
//
//  Created by jason harrison on 2018-12-30.
//  Copyright © 2018 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber* age = [NSNumber numberWithInt:46];
        
        int nextYear = [age intValue];
        nextYear++;
        
        age = [NSNumber numberWithInt:nextYear];
        
        NSLog(@"next year I will be %@", age);
        
        NSDate* now = [NSDate date];
        NSLog(@"%@", now);
    }
    return 0;
}
