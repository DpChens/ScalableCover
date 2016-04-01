//
//  UIScrollView+ScalableCover.h
//  我的app
//
//  Created by 陈荣 on 16/1/9.
//  Copyright © 2016年 陈荣. All rights reserved.
//

#import <UIKit/UIKit.h>

static const CGFloat MaxHeight = 250;


@interface ScalableCover : UIImageView

@property (nonatomic, weak) UIScrollView *scrollView;

@end




@interface UIScrollView (ScalableCover)

@property (nonatomic, weak) ScalableCover *scalableCover;

- (void)addScalableCoverWithImage:(UIImage *)image;
- (void)removeScalableCover;

@end

