//
//  ViewController.m
//  GifBackgroundImg
//
//  Created by JunpingWon on 15/10/26.
//  Copyright (c) 2015年 JunpingWon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"star" ofType:@"gif"];
    NSData *gif = [NSData dataWithContentsOfFile:filePath];
    
    
    UIWebView *webViewBg = [[UIWebView alloc]initWithFrame:self.view.frame];
    [webViewBg loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    webViewBg.userInteractionEnabled = NO;
    [self.view addSubview:webViewBg];
    
}



@end
