//
//  main.m
//  SingletonPattern
//
//  Created by stu075 on 16/1/6.
//  Copyright (c) 2016年 syetc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonTest.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SingletonTest *a = [SingletonTest shareSingletonTest];
        SingletonTest *b = [SingletonTest shareSingletonTest];
        SingletonTest *c = [[SingletonTest alloc] init];
        SingletonTest *d = [c copy];
        NSLog(@"%@", a);
        NSLog(@"%@", b);
        NSLog(@"%@", c);
        NSLog(@"%@", d);    
    }
    return 0;
}
