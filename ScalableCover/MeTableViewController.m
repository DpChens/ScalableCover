//
//  MeTableViewController.m
//  我的app
//
//  Created by 陈荣 on 16/1/9.
//  Copyright © 2016年 陈荣. All rights reserved.
//
#import "MeTableViewController.h"
#import "UIScrollView+ScalableCover.h"
@interface MeTableViewController ()

@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImgView;
@property (weak, nonatomic) IBOutlet UILabel *wechatNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *detial;

@end

@implementation MeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     //设置scroll的背景图片
    [self setCoverImage:[UIImage imageNamed:@"timg"]];
   [[[self.navigationController.navigationBar subviews]objectAtIndex:0] setAlpha:0]; //0代表设置纯透明，可以改
    
    self.tableView.separatorColor = [UIColor clearColor];
 
    //设置头像的圆角
    _avatarImgView.layer.masksToBounds =YES;
    [_avatarImgView.layer setCornerRadius:40];
   _avatarImgView.layer.rasterizationScale=[UIScreen mainScreen].scale;
    
    //设置头像边的颜色
     _avatarImgView.layer.borderColor = [UIColor whiteColor].CGColor;
     _avatarImgView.layer.borderWidth = 3;
    
    
    //设置数据源
    self.tableView.dataSource = self;
    //设置代理
    self.tableView.delegate = self;
}



#pragma mark - scrollView的分类方法
- (void)setCoverImage:(UIImage *)image
{
    if (!self.tableView.scalableCover) {
    [self.tableView addScalableCoverWithImage:image];
     }else {
    self.tableView.scalableCover.image = image;
  }
}

#pragma mark - Table view data source


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

  
        return [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
}
@end