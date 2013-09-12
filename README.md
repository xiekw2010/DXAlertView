DXAlertView
===========

A path style alert view

Feature:

1. Simple API

The API sample:

	/*init method*/

	//if you set the both the left and right button title, than the both leftblock and rightblock will work,

	//If you want a single button, then you should set the leftbuttonTitle:nil.

    DXAlertView *alert = [[DXAlertView alloc] initWithTitle:@"Congratulations" contentText:@"You have bought something" leftButtonTitle:@"Ok" rightButtonTitle:@"Fine"];

    /*call this to show the alert on window*/

    [alert showAlert];

    /*The touch event call back*/

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
