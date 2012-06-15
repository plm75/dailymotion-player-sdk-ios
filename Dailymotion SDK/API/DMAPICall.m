//
//  DMAPICall.m
//  Dailymotion SDK iOS
//
//  Created by Olivier Poitrey on 12/06/12.
//  Copyright (c) 2012 Dailymotion. All rights reserved.
//

#import "DMAPICall.h"

@interface DMAPICall ()

@property (nonatomic, copy, readwrite) NSString *callId;
@property (nonatomic, copy, readwrite) NSString *method;
@property (nonatomic, copy, readwrite) NSString *path;
@property (nonatomic, copy, readwrite) NSDictionary *args;
@property (nonatomic, strong, readwrite) DMAPICacheInfo *cacheInfo;
@property (nonatomic, strong, readwrite) DMAPICallResultBlock callback;
@property (nonatomic, assign, readwrite) BOOL isCancelled;

@end


@implementation DMAPICall

- (id)init
{
    if ((self = [super init]))
    {
        _isCancelled = NO;
    }
    return self;
}

- (void)cancel
{
    self.isCancelled = YES;
}

@end