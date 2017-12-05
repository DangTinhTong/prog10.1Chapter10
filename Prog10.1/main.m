//
//  main.m
//  Prog10.1
//
//  Created by Tống Đăng Tình on 12/5/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Fraction *myFraction1 ,*myFraction2;
        
        myFraction1 = [[Fraction alloc] initWith:1 over:3];
        [myFraction1 print];
        myFraction2 = [[Fraction alloc] initWith:3 over:4];
        [myFraction2 print];
    }
    return 0;
}
