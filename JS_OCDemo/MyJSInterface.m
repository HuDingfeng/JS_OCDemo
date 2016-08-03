//
//  MyJSInterface.m
//  EasyJSWebViewSample
//
//  Created by Lau Alex on 19/1/13.
//  Copyright (c) 2013 Dukeland. All rights reserved.
//

#import "MyJSInterface.h"
@implementation MyJSInterface

-(NSString *)get_user_info{

    return @"123";
}

-(void)set_user_info:(NSString *)num
{
    NSLog(@"%@",num);
    
}

-(void)recharge{
    NSLog(@"recharge");
}

-(void)promote{
    NSLog(@"promote");
}

-(void)login{
    NSLog(@"login");
}

-(void)regist{
    NSLog(@"regist");
}

-(void)tinvest:(int)tid type:(int)type{
    NSLog(@"%d",tid);
     NSLog(@"%d",type);
}
-(void)message:(NSString *)title content:(NSString *)content status:(NSString *)status{
    NSLog(@"%@",title);
    NSLog(@"%@",content);
    NSLog(@"%@",status);
}
@end
