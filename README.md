# JS_OCDemo JS动态调用OC方法传递参数

IOS在做js与oc代码交互参数传递时，不如安卓方便，demo中导入EasyJSWebView，EasyJSWebView封装了类似于安卓的addJavascriptInterfaces方法,示例：
 
 
     MyJSInterface *interface = [MyJSInterface new];
    
    [self.mainWebview addJavascriptInterfaces:interface WithName:@"JsInteraction"];
    
    [interface release];
    
 
