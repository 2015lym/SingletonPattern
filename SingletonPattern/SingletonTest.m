//
//  SingletonTest.m
//  SingletonPattern
//
//  Created by stu075 on 16/1/6.
//  Copyright (c) 2016年 syetc. All rights reserved.
//

#import "SingletonTest.h"

@implementation SingletonTest
static SingletonTest *shared=nil;

+ (id)shareSingletonTest                  //核心
{
    static dispatch_once_t x;
    dispatch_once(&x, ^{
        if (shared == nil) {
        shared = [[super allocWithZone:NULL] init];    
        }
    });
    return shared;
}
+ (id)allocWithZone:(struct _NSZone *)zone  
{
    return [self shareSingletonTest];
}
- (id)copyWithZone:(nullable NSZone *)zone  
{
    return self;
}

@end
