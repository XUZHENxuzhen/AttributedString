//
//  ViewController.m
//  有属性的字
//
//  Created by angelwin on 16/5/26.
//  Copyright © 2016年 com@angelwin. All rights reserved.
//

#import "ViewController.h"
#define UIColorFromRGB(rgbValue)   [UIColor colorWithRed:((float)((rgbValue & 0xFF0000)>> 16))/255.0 green:((float)((rgbValue & 0xFF00)>> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test2];
    [self test1];
}
// 给label 添加删除线，类似做优惠价格的时候需要用到删除线

- (void)test2{
    UILabel *oldPriceLabel = [[UILabel alloc]initWithFrame:CGRectMake(40, 40, 100, 100)];
    [self.view addSubview:oldPriceLabel];
    
    NSString *oldPrice= @"¥ 12345";
    NSUInteger  length = oldPrice.length;
    NSMutableAttributedString *attar = [[NSMutableAttributedString alloc]initWithString:oldPrice];
    [attar addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:NSMakeRange(2, length- 2)];
    [attar addAttribute:NSStrokeColorAttributeName value:UIColorFromRGB(0x9999) range:NSMakeRange(2, length- 2)];
//    [oldPriceLabel setAttributedText:attar];
    oldPriceLabel.attributedText = attar;
}

//设置字符串中某个位置的字符串是蓝色
- (void)test1 {
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    [self.view addSubview:label];
    NSString *name = @"test";
    NSString *text = [NSString stringWithFormat:@"%@:Hello world",name];
    NSMutableAttributedString *styleText = [[NSMutableAttributedString alloc]initWithString:text];
    NSDictionary *attribute = @{NSForegroundColorAttributeName:[UIColor blueColor]};
    NSRange nameRange = [text rangeOfString:[NSString stringWithFormat:@"%@:",name]];
    [styleText setAttributes:attribute range:nameRange];
    label.attributedText = styleText;
}

@end
