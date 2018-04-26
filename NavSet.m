//
//  ADAcount.m
//  ADoneDriver
//
//  Created by maso on 2018/3/20.
//  Copyright © 2018年 Shandong All-Line Technology Co., Ltd. All rights reserved.
//  用户模型

#import "ADAcount.h"

@implementation ADAcount
/**
 *  从文件中解析对象的时候调
 */
- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init]) {
        self.accessToken = [decoder decodeObjectForKey:@"accessToken"];
        self.remind_in = [decoder decodeInt64ForKey:@"remind_in"];
        self.expires_in = [decoder decodeInt64ForKey:@"expires_in"];
        self.uid = [decoder decodeInt64ForKey:@"uid"];
        self.expiresTime = [decoder decodeObjectForKey:@"expiresTime"];
        
        self.expireInSeconds = [decoder decodeInt64ForKey:@"expireInSeconds"];
        self.passwordResetCode = [decoder decodeObjectForKey:@"passwordResetCode"];
        self.refreshToken = [decoder decodeObjectForKey:@"refreshToken"];
        self.refreshTokenExpireTime = [decoder decodeObjectForKey:@"refreshTokenExpireTime"];
        self.requiresTwoFactorVerification = [decoder decodeInt64ForKey:@"requiresTwoFactorVerification"];
        self.returnUrl = [decoder decodeObjectForKey:@"returnUrl"];
        self.shouldResetPassword = [decoder decodeInt64ForKey:@"shouldResetPassword"];
        self.twoFactorAuthProviders = [decoder decodeObjectForKey:@"twoFactorAuthProviders"];
        self.twoFactorRememberClientToken = [decoder decodeObjectForKey:@"twoFactorRememberClientToken"];
        self.userId = [decoder decodeInt64ForKey:@"userId"];
        
        
    }
    return self;
}

/**
 *  将对象写入文件的时候调用
 */
- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.accessToken forKey:@"accessToken"];
    [encoder encodeObject:self.expiresTime forKey:@"expiresTime"];
    [encoder encodeInt64:self.remind_in forKey:@"remind_in"];
    [encoder encodeInt64:self.expires_in forKey:@"expires_in"];
    [encoder encodeInt64:self.uid forKey:@"uid"];
    
      [encoder encodeObject:self.encryptedAccessToken forKey:@"encryptedAccessToken"];
      [encoder encodeInt64:self.expireInSeconds forKey:@"expireInSeconds"];
      [encoder encodeObject:self.passwordResetCode forKey:@"passwordResetCode"];
      [encoder encodeObject:self.refreshToken forKey:@"refreshToken"];
      [encoder encodeObject:self.refreshTokenExpireTime forKey:@"refreshTokenExpireTime"];
      [encoder encodeInt64:self.requiresTwoFactorVerification forKey:@"requiresTwoFactorVerification"];
      [encoder encodeObject:self.returnUrl forKey:@"returnUrl"];
      [encoder encodeInt64:self.shouldResetPassword forKey:@"shouldResetPassword"];
      [encoder encodeObject:self.twoFactorAuthProviders forKey:@"twoFactorAuthProviders"];
      [encoder encodeObject:self.twoFactorRememberClientToken forKey:@"twoFactorRememberClientToken"];
      [encoder encodeInt64:self.userId forKey:@"userId"];
}
@end
