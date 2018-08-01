//
//  Internet.m
//  RKPharma
//
//  Created by shiv vaishnav on 16/05/13.
//  Copyright (c) 2013 shivendra@ranosys.com. All rights reserved.
//

#import "Internet.h"
#import "Utils.h"

@implementation Internet

+ (void)startMonitiorForNetConnection {
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

+ (BOOL)checkNetConnection {
    BOOL isNetConnected = YES;
    NSString *language;
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    AFNetworkReachabilityStatus internetStatus = [[AFNetworkReachabilityManager sharedManager] isReachable];
    if (internetStatus != AFNetworkReachabilityStatusReachableViaWiFi && internetStatus != AFNetworkReachabilityStatusReachableViaWWAN) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Network Connection Unavailable" message:@"You require an internet connection via WiFi or cellular network to use this application." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
        
        isNetConnected = NO;
    }
    
    return isNetConnected;
}

@end


