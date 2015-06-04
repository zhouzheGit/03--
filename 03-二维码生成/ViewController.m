//
//  ViewController.m
//  03-二维码生成
//
//  Created by apple on 13-11-23.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Helper.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *qrImage;

@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // 1. 关闭键盘
    [self.view endEditing:YES];
    
    // 2. 生成二维码
    _qrImage.image = [textField.text createQRCode];
    
    return YES;
}

@end
