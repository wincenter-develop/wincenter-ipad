//
//  HostVO.h
//  0805
//
//  Created by 黄茂坚 on 14-8-5.
//  Copyright (c) 2014年 黄茂坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HostVO : NSObject

@property NSString *name;
@property NSString *status;
@property NSString *ip;

@property int vmCount;
@property int vmRunningCount;
@property int virNetworkCount;
@property int localStorageCount;
@property NSString *runningTime;
@property NSString *virInfo;

@property float cpuFrequency;//cpu频率
@property NSString *cpuModel;//cpu型号
@property NSString *cpuSupplier;//cpu供应商
@property int cpuCoreCount;//cpu颗数
@property int cpuUnitCount;
@property int cpuUnitUsedCount;
@property int cpuUnitUnusedCount;

@property float memerySize;
@property float memeryUsedSize;
@property float memeryUnusedSize;

@property float storageSize;
@property float storageUsedSize;
@property float storageUnusedSize;

@end
