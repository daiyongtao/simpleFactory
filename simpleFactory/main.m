//
//  main.m
//  simpleFactory
//
//  Created by 花果山松鼠 on 2022/5/14.
//
// 例子：简易计算器（提供加减乘除方法）

#import <Foundation/Foundation.h>
#import "FTOperation.h"

#import "FTBaseOperation.h"
#import "FTOperationFactory.h"

// 初始写法
void test1() {
    double numberA = 3.0;
    double numberB = 0.0;
    double result = [FTOperation getResultWithNumberA:numberA numberB:numberB operate:FTOperateDiv];
    NSLog(@"%.2f", result);
}

// 简单工厂模式 + 继承、多态
// 优点：隔离每一个运算，实现初步解耦

// 比如要增加 平方根、立方根、正弦余弦等函数，只需要
// 1.添加对应的子类，实现getResult方法
// 2.修改FTOperationFactory计算类工厂，在switch中增加分支
void test2() {
    FTBaseOperation *operation = [FTOperationFactory createOperationWithOperateType:FTOperateDiv];
    operation.numberA = 3.0;
    operation.numberB = 2.0;
    double result = [operation getResult];
    NSLog(@"%.2f", result);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        test1();
        test2();
    }
    return 0;
}
