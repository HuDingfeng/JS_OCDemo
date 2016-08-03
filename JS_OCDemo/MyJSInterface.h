//
//  MyJSInterface.h
//  EasyJSWebViewSample
//
//  Created by Lau Alex on 19/1/13.
//  Copyright (c) 2013 Dukeland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EasyJSDataFunction.h"

@interface MyJSInterface : NSObject
@property (nonatomic,strong)UIViewController *viewController;
-(NSString *)get_user_info;
-(void)set_user_info:(NSString*)num;
-(void)recharge;
-(void)promote;
-(void)tinvest:(int)tid type:(int)type;
-(void)message:(NSString *)title content:(NSString *)content status:(NSString *)status;
-(void)login;
-(void)regist;
@end
