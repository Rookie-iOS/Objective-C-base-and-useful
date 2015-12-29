
// ******** 常用代码 *************

// 收起键盘
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
// NSLog 自定义

// 方式一 ：重写NSLog
#ifdef DEBUG
#define NSLog(fmt, ...) do{                     \
        NSLog((@"%s:(Line:%d)" fmt),            \
        __func__,                               \
        __LINE__,                               \
        ##__VA_ARGS__);                         \
    } while (0)
#else
#define NSLog(fmt, ...){}
#endif
    // 方式二 ：自定义NSLog

#ifdef DEBUG
#define ZYLog(fmt, ...) NSLog((@"%s :(Line:%d)" fmt),__func__,__LINE__,##__VA_ARGS__);
#else
#define ZYLog(fmt, ...) NSLog(fmt, ...){}
#endif
