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
+(id)shareSingletonTest                  //单例模式核心代码
{
    static dispatch_once_t x;
    dispatch_once(&x, ^{
        if (shared==nil) {
        shared=[[super allocWithZone:NULL]init];    //实际开发中，不需要再写下面两个方法，说一声就行了
        }
    });
    return shared;
}
+(id)allocWithZone:(struct _NSZone *)zone  //用来堵住alloc init的口
{
    return [self shareSingletonTest];
}
-(id)copyWithZone:(nullable NSZone *)zone  //用来堵住cpoy的口
{
    return self;
}
@end
