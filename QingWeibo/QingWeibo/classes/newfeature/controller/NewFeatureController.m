//
//  NewFeatureController.m
//  QingWeibo
//
//  Created by guiqing on 8/5/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import "NewFeatureController.h"
#define kImageCount 4

@interface NewFeatureController ()

@end

@implementation NewFeatureController

// custom view :need to overwrite loadView:avoid its super calss create a useless blank view
-(void)loadView{

//don't [super loadView]
    UIImageView *imageView =[[UIImageView alloc]init];
    imageView.image=[UIImage imageNamed:@"new_feature_background.png"];
    
    imageView.frame = [UIScreen mainScreen].applicationFrame;
    /*
     以3.5inch为例 (640*960)点坐标是 320 480
     applicationFrame的好处是自动判断是否有状态栏
     1>当没有状态栏 applicationFrame的只{{0,0}{320,480}}
     2>当有状态栏 applicationFrame的只{{0,0}{320,460}}\
     而 bounds的值是固定的
     */
    
    
    self.view=imageView;
    
    

}
/*
 一个控件无法显示的时候,可能的原因:
 1.没有设置宽高[或者宽高没有值]
 2.位置不对
 3.hidden=YES
 4.没有添加控制器的view上面
 */


- (void)viewDidLoad
{
    [super viewDidLoad];
    //debug ,why there ain't images her
    NSLog(@"%@",NSStringFromCGRect(self.view.bounds));
    //out put   0 0 0 0
    
    
    //1. add UIScrollView
    UIScrollView *scroll =[[UIScrollView alloc]init];
    scroll.frame=self.view.bounds;
    scroll.showsHorizontalScrollIndicator=NO;//hide scroll bar
    [self.view addSubview:scroll];
    //2. add images
    CGSize size = scroll.frame.size;
    for (int i=0; i<kImageCount; i++) {
        
        UIImageView *imageView =[[UIImageView alloc]init];
        //show the pics
        NSString *name =[NSString stringWithFormat:@"new_feature_%d.png",i+1];
        imageView.image=[UIImage imageNamed:name];
        //set frame
       
        imageView.frame=CGRectMake(i*size.width, 0, size.width, size.height);
        
        
        [scroll addSubview:imageView];
        
        
    }
    
    //3. add UIPageControll
    
    
    
    
    
    
    
}


@end
