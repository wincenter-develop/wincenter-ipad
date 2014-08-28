//
//  storageVO.h
//  wincenterDemo01
//
//  Created by 黄茂坚 on 14-8-28.
//  Copyright (c) 2014年 黄茂坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface storageVO : NSObject

@property NSString *name;
@property NSString *status;
@property NSString *ip;

@property float storageSize;//总量
@property float storageUsedSize;//已使用
@property float storageUnusedSize;
@property float storageDistributed;//已分配

@property int virDiskCount;//虚拟磁盘数
@property int linkHostCount;//连接物理机
@property int mountVmCount;//挂载虚拟机数量
@property NSString *isShare;//共享
@property NSString *isDefault;//默认

@end
