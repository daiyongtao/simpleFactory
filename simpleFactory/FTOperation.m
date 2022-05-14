//
//  FTOperation.m
//  1.简单工厂模式
//
//  Created by 花果山松鼠 on 2022/5/11.
//

#import "FTOperation.h"

@implementation FTOperation

+ (double)getResultWithNumberA:(double)numberA numberB:(double)numberB operate:(FTOperateType)operateType {
    
    double result = 0.0;
    
    switch (operateType) {
        case FTOperateAdd : // +
            result = numberA + numberB;
            break;
        case FTOperateMSub: // -
            result = numberA - numberB;
            break;
        case FTOperateMul: // *
            result = numberA * numberB;
            break;
        case FTOperateDiv: // /
            result = numberA / numberB;
            break;
            
        default:
            break;
    }
    
    return result;
}

@end
