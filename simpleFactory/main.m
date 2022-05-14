//
//  main.m
//  simpleFactory
//
//  Created by 花果山松鼠 on 2022/5/14.
//
// 例子：简易计算器（提供加减乘除方法）

#import <Foundation/Foundation.h>
#import "FTOperation.h"

// 初始写法
void test1() {
    double numberA = 3.0;
    double numberB = 0.0;
    double result = [FTOperation getResultWithNumberA:numberA numberB:numberB operate:FTOperateAdd];
    NSLog(@"%.2f", result);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test1();
    }
    return 0;
}
