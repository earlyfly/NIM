//
//  ZWAttachmentDecoder.m
//  Pods
//
//  Created by earlyfly on 2017/9/1.
//
//

#import "ZWAttachmentDecoder.h"
#import "ZWAttachment.h"

@implementation ZWAttachmentDecoder

- (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content{
    //所有的自定义消息都会走这个解码方法，如有多种自定义消息请自行做好类型判断和版本兼容。这里仅演示最简单的情况。
    id<NIMCustomAttachment> attachment;
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    if (data) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"===========解析IM任务消息==========%@==============",dict);
        if ([dict isKindOfClass:[NSDictionary class]]) {
            
            NSString *msg = dict[@"msg"];
            NSString *weddingId = dict[@"weddingId"];
            NSString *taskId = dict[@"taskId"];
            NSNumber *msgType = dict[@"msgType"];
            ZWAttachment *myAttachment = [[ZWAttachment alloc] init];
            myAttachment.msg = msg;
            myAttachment.weddingId = weddingId;
            myAttachment.taskId = taskId;
            myAttachment.msgType = msgType;
            attachment = myAttachment;
        }
    }
    return attachment;
}

@end
