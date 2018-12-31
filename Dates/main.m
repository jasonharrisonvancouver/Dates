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
        
        NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        
        NSString* birthDate = @"October 6 1972";
        [formatter dateFromString:birthDate];
        
        NSLog(@"birthdate is %@", [formatter stringFromDate:now]);
        
        NSLog(@"-----------------------------------------");

        
        NSString *born = @"1972-10-06";
        NSDate *today = [NSDate date];
        
        NSDateFormatter *f = [[NSDateFormatter alloc] init];
        [f setDateFormat:@"yyyy-MM-dd"];
        
        NSDate *dateBorn = [f dateFromString:born];
        
        NSCalendar *greg = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDateComponents *components = [greg components:NSCalendarUnitSecond
                                               fromDate:dateBorn
                                                 toDate:today
                                                options:0];
        NSLog(@"%ld", [components second]);
    }
    return 0;
}
