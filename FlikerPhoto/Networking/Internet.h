//
//  Internet.h
//  RKPharma
//
//  Created by shiv vaishnav on 16/05/13.
//  Copyright (c) 2013 shivendra@ranosys.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworkReachabilityManager.h"

@interface Internet : NSObject 

+ (BOOL)checkNetConnection;

+ (void)startMonitiorForNetConnection;

@end
