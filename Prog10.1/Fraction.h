//
//  Fraction.h
//  Prog10.1
//
//  Created by admin on 12/5/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;
-(void) print;
-(void) setNumerator: (int) n andDenominator: (int) d;
-(void) reduce;
-(Fraction*) add: (Fraction*)f;
-(double) convertToNum;
-(Fraction*) initWith: (int) n over: (int)d;

@end
