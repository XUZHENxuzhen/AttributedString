# AttributedString
设置特定位置文字的颜色／以及类似 优惠价格划线处理
也可通过这个方法进行设置
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGSize size =   [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    [[UIColor redColor] set];
    CGFloat w = size.width;
    CGFloat h = rect.size.height;
    UIRectFill(CGRectMake(0, h *0.5, w, 1));
    
}
