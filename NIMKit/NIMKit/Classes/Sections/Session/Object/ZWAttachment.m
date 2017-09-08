//
//  ZWAttachment.m
//  Pods
//
//  Created by earlyfly on 2017/8/31.
//
//

#import "ZWAttachment.h"

@implementation ZWAttachment

//发自定义消息构建Json数据字符串
- (NSString *)encodeAttachment
{
    
    NSDictionary *dict = @{@"msg" : self.msg,
                           @"msgType" : self.msgType,
                           @"weddingId" : self.weddingId,
                           @"taskId" : self.taskId,
                           };
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   options:0
                                                     error:nil];
    NSString *content = nil;
    if (data) {
        content = [[NSString alloc] initWithData:data
                                        encoding:NSUTF8StringEncoding];
    }
    return content;
}

@end
