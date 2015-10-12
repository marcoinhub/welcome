//
//  ViewController.m
//  welcome
//
//  Created by 刁文杰 on 15/8/11.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIScrollView * scrollView;
@property (nonatomic,strong)UIImageView * imageView;
@end

@implementation ViewController

-(NSArray*)AllImages{
    //把需要添加的图片名字放一个数组里
    return @[@"welcome1.PNG",@"welcome2.PNG",@"welcome3.PNG",@"welcome4.PNG"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置scrollView的 大小位置
    self.view.frame=[[UIScreen mainScreen] bounds];
    self.scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];

    //用循环给每个imageView 设置合适的farme
    //用循环创建 imageView 添加到 scrollView里
    for (NSInteger i = 0;i<[self AllImages].count ; i++) {
        //利用数组和循环得到图片名字
        UIImageView * imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[self AllImages ][i]]];
        //设置图片的frame
        imageView.frame = CGRectMake(self.view.frame.size.width*i, 0, self.view.frame.size.width, self.view.frame.size.height);
        //依次添加到scrollView上
        [self.scrollView addSubview:imageView];
    }
    //设置scrollView的可滑动范围
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*[self AllImages].count, self.view.frame.size.height);
    //把scrollView添加到视图上
    [self.view addSubview:self.scrollView];
    
    // 设置滚动视图不可以弹跳
    self.scrollView.bounces = NO;
    // 设置滚动视图整页滚动
    self.scrollView.pagingEnabled = YES;
    // 设置滚动视图的水平滚动提示不可见
    self.scrollView.showsHorizontalScrollIndicator = NO;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
