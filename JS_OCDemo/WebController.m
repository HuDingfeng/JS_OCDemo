//
//  WebController.m
//  JS_OCDemo
//
//  Created by hdf on 16/8/3.
//  Copyright © 2016年 HuDingfeng  http://hudingfeng.github.io . All rights reserved.
//

#import "WebController.h"
#import "EasyJSWebView.h"
#import "MyJSInterface.h"
@interface WebController ()
@property (nonatomic,strong) EasyJSWebView *mainWebview;
@end

@implementation WebController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyJSInterface *interface = [MyJSInterface new];
    
    [self.mainWebview addJavascriptInterfaces:interface WithName:@"JsInteraction"];
    
    [interface release];
    //    webview.delegate = self;
    
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"haha" ofType:@"html"];
    NSString *html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    [self.mainWebview loadHTMLString:html baseURL:baseURL];
}

-(EasyJSWebView*)mainWebview{
    
    if (!_mainWebview) {
        _mainWebview = [[EasyJSWebView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64)];
        [self.view addSubview:_mainWebview];
    }
    return _mainWebview;
}
@end
