//
//  ViewController.m
//  StringSize
//
//  Created by yxw on 15/8/26.
//  Copyright (c) 2015年 yxw. All rights reserved.
//

#import "ViewController.h"
#import "NSString+StringSize.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *content = @"中国人民银行决定，自2015年8月26日起，下调金融机构人民币贷款和存款基准利率，其中，一年期存款基准利率下调0.25个百分点至1.75%；自2015年9月6日起，下调金融机构人民币存款准备金率0.5个百分点。";
    CGSize size = [content getSizeWithFont:[UIFont systemFontOfSize:16] forWidth:self.view.bounds.size.width lineBreakMode:NSLineBreakByWordWrapping];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, size.width, size.height)];
    label.text = content;
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:16];
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.layer.borderColor = [UIColor lightGrayColor].CGColor;
    label.layer.borderWidth = 0.5f;
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
