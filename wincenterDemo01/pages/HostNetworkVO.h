//
//  HostNetworkVO.h
//  wincenterDemo01
//
//  Created by 黄茂坚 on 14-8-27.
//  Copyright (c) 2014年 黄茂坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HostNetworkVO : NSObject

@property NSString *name;
@property NSString *status;
@property NSString *underPool;//所属资源池
@property NSString *underIpPool;//所属ip池
@property NSString *ipRange;//ip段
@property int ipUnusedCount;//剩余ip数
@property int vlanCount;//vlan数
@property NSString *nic;//所属适配器

@end
