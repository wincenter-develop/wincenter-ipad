//
//  DatacenterVO.h
//  wincenterDemo01
//
//  Created by 黄茂坚 on 14-8-27.
//  Copyright (c) 2014年 黄茂坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DatacenterVO : NSObject
@property NSString *name;
@property int poolCount;
@property int hostCount;
@property int vmCount;
@property int businessCount;

@property int cpuUnitCount;
@property int cpuUnitUsedCount;
@property int cpuUnitUnusedCount;

@property float memerySize;
@property float memeryUsedSize;
@property float memeryUnusedSize;

@property float storageSize;
@property float storageUsedSize;
@property float storageUnusedSize;

@property int networkIpCount;
@property int networkIpUsedCount;
@property int networkIpUnusedCount;

@end
