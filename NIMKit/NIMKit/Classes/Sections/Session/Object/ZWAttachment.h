//
//  ZWAttachment.h
//  Pods
//
//  Created by earlyfly on 2017/8/31.
//
//

#import <Foundation/Foundation.h>
#import <NIMSDK/NIMCustomObject.h>

@interface ZWAttachment : NSObject<NIMCustomAttachment>

@property (nonatomic,copy) NSString *msg;//消息
@property (nonatomic,strong) NSNumber *msgType;
@property (nonatomic,copy) NSString *weddingId;
@property (nonatomic,copy) NSString *taskId;//任务id

@end
