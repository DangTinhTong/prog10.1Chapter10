//
//  Fraction.m
//  Prog10.1
//
//  Created by admin on 12/5/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
    
}

-(void) setNumerator:(int)n andDenominator:(int)d
{
    numerator = n;
    denominator = d;
    
}

-(void) reduce
{
    int u = numerator ;
    int v = denominator;
    int temp;
    while (v!=0) {
        temp = u%v;
        u=v;
        v=temp;
    }
    numerator/=u;
    denominator/=u;
}

-(Fraction*) add: (Fraction*)f
{
    Fraction *mFraction = [[Fraction alloc] init];
    mFraction.numerator = numerator*f.denominator + denominator*f.numerator;
    mFraction.denominator = denominator*f.denominator;
    [self reduce];
    return mFraction;
}

-(double) convertToNum
{
    if (denominator!=0)
        return (double) numerator/denominator;
    else
        return NAN;
}

-(Fraction* )initWith:(int)n over:(int)d
{
    //self [super init];
    if (self)
        [self setNumerator:numerator andDenominator:denominator];
    return self;
}
@end

