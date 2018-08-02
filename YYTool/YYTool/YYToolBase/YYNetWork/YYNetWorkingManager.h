//
//  YYNetWorkingManager.h
//  ArrQTool
//
//  Created by admin on 2018/7/17.
//  Copyright © 2018年 ArrQ. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <AFNetworking.h>

@interface YYNetWorkingManager : NSObject


+ (instancetype)shareManager;
/**
 *清理cookie (一般在退出登录的时候清理一下)
 */
+ (void)clearnCookie;

/**自定义请求头：httpHeaderField*/
@property(nonatomic, strong) NSDictionary *httpHeaderFieldDictionary;

/**请求超时时间（默认为30秒）*/
@property (nonatomic,assign) NSTimeInterval timeoutInterval;


@property (nonatomic,strong) AFHTTPRequestSerializer *requestSerializer;

@property (nonatomic,strong) AFHTTPResponseSerializer *responseSerializer;


/*
 普通网络请求
 typeIndex     get = 0,post = 1
 
 */
+ (void)requestType:(NSInteger)typeIndex urlString:(NSString *)urlStr parameters:(NSDictionary *)params successBlock:(void(^)(id responseObject))success failure:(void(^)(NSError *error))errorBlock;
// 上传 图片
-(void)upImageWithParameter:(NSDictionary *)parameter imageArray:(NSArray *)images url:(NSString *)url successBlock:(void(^)(id responseObject))successBlock failureBlock:(void(^)(NSError *error))failureBlock;


/*
 
 302 请求
 typeIndex     get = 0,post = 1
 responseType  json = 0,data = 1
 */

+ (NSURLSessionDataTask *)getRequestType:(NSInteger)typeIndex andUrl:(NSString *)urlString responeseType:(NSInteger)responseType parameters:(NSDictionary *)params successBlock:(void(^)(id responseObject))success failure:(void(^)(NSError *error))errorBlock sessionDataTask:(void(^)(NSURLSessionDataTask *task))dataTask;



@end
