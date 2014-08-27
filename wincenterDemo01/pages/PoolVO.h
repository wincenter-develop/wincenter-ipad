//
//  PoolVO.h
//  0805
//
//  Created by 黄茂坚 on 14-8-5.
//  Copyright (c) 2014年 黄茂坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoolVO : NSObject

@property NSString *name;

@property int hostCount;
@property int vmCount;


@property int cpuUnitCount;
@property int cpuUnitUsedCount;
@property int cpuUnitUnusedCount;

@property float memerySize;
@property float memeryUsedSize;
@property float memeryUnusedSize;

@property float storageSize;
@property float storageUsedSize;
@property float storageUnusedSize;

@property int haErrorHostCount;
@property NSString *haSignalNetwork;//检测信号网络
@property NSString *haSignalPool;//检测信号存储池

@property NSString *elasticModel;//弹性模式
@property float cpuLoadBalancing;//cpu负载均衡阀值
@property float memeryLoadBalancing;//内存负载均衡阀值
@property float intervalTime;//触发间隔
@property NSString *nextCheckTime;//下次检测时间

@end
