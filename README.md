DXAlertView
===========

## Feature

1. API is simple just like the UIAlertView.
2. The callback function is simple to write.
3. The animation is cool or in another saying----different from the triditional way.

### How to use

eg:

    DXAlertView *alert = [[DXAlertView alloc] initWithTitle:@"Congratulations" contentText:@"You have bought something" leftButtonTitle:@"Ok" rightButtonTitle:@"Fine"];
    [alert show];

    alert.leftBlock = ^() {
        NSLog(@"left button clicked");
    };
    alert.rightBlock = ^() {
        NSLog(@"right button clicked");
    };
    alert.dismissBlock = ^() {
        NSLog(@"Do something interesting after dismiss block");
    };


PicDemo:

![screenshots](http://ww4.sinaimg.cn/bmiddle/84178573jw1e8jvlyocrmg204g04gjzo.gif)
