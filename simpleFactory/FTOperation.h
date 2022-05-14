//
//  FTOperation.h
//  1.简单工厂模式
//
//  Created by 花果山松鼠 on 2022/5/11.
//

#import <Foundation/Foundation.h>
#import "FTEnumDefine.h"

NS_ASSUME_NONNULL_BEGIN

@interface FTOperation : NSObject

/// 获取计算结果
/// @param numberA 数字A
/// @param numberB 数字B
/// @param operateType 运算类型
+ (double)getResultWithNumberA:(double)numberA numberB:(double)numberB operate:(FTOperateType)operateType;

@end

NS_ASSUME_NONNULL_END
