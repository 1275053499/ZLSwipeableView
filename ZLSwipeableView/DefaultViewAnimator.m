//
//  DefaultViewAnimator.m
//  ZLSwipeableViewDemo
//
//  Created by Zhixuan Lai on 10/25/15.
//  Copyright © 2015 Zhixuan Lai. All rights reserved.
//

#import "DefaultViewAnimator.h"

@implementation DefaultViewAnimator

- (CGFloat)degreesToRadians:(CGFloat)degrees {
    return degrees * M_PI / 180;
}

- (CGFloat)radiansToDegrees:(CGFloat)radians {
    return radians * 180 / M_PI;
}

- (void)rotateView:(UIView *)view
         forDegree:(float)degree
          duration:(NSTimeInterval)duration
atOffsetFromCenter:(CGPoint)offset
     swipeableView:(ZLSwipeableView *)swipeableView {
    float rotationRadian = [self degreesToRadians:degree];
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                       view.center = [swipeableView convertPoint:swipeableView.center
                                                        fromView:swipeableView.superview];
                       CGAffineTransform transform =
                           CGAffineTransformMakeTranslation(offset.x, offset.y);
                       transform = CGAffineTransformRotate(transform, rotationRadian);
                       transform = CGAffineTransformTranslate(transform, -offset.x, -offset.y);
                       view.transform = transform;
                     }
                     completion:nil];
}

- (void)animateView:(UIView *)view
              index:(NSUInteger)index
              views:(NSArray<UIView *> *)views
      swipeableView:(ZLSwipeableView *)swipeableView {
      
      switch (index) {
        case 0:
            {
                [UIView animateWithDuration:0.5 animations:^{
                    view.transform = CGAffineTransformMakeScale(1, 1);
                                } completion:^(BOOL finished) {
                                    
                                }];
               
            }
            break;
        case 1:
            {
                [UIView animateWithDuration:0.5 animations:^{
                    view.transform = CGAffineTransformMakeScale(0.95, 0.95);
                                } completion:^(BOOL finished) {
                                    
                                }];
              
            }
            break;
            case 2:{
                [UIView animateWithDuration:0.5 animations:^{
                    view.transform = CGAffineTransformMakeScale(0.90, 0.90);
                                } completion:^(BOOL finished) {
                                    
                                }];
            }
               
            break;
            case 3:{
                [UIView animateWithDuration:0.6 animations:^{
                    view.transform = CGAffineTransformMakeScale(0.85, 0.85);
                                } completion:^(BOOL finished) {
                                    
                                }];
            }
            break;
            default:{
                
            }
            break;
        }
        
//         原来效果
//     CGFloat degree = 1;
//     NSTimeInterval duration = 0.4;
//     CGPoint offset = CGPointMake(0, CGRectGetHeight(swipeableView.bounds) * 0.3);
//     switch (index) {
//     case 0:
//         [self rotateView:view
//                      forDegree:0
//                       duration:duration
//             atOffsetFromCenter:offset
//                  swipeableView:swipeableView];
//         break;
//     case 1:
//         [self rotateView:view
//                      forDegree:degree
//                       duration:duration
//             atOffsetFromCenter:offset
//                  swipeableView:swipeableView];
//         break;
//     case 2:
//         [self rotateView:view
//                      forDegree:-degree
//                       duration:duration
//             atOffsetFromCenter:offset
//                  swipeableView:swipeableView];
//         break;
//     case 3:
//         [self rotateView:view
//                      forDegree:0
//                       duration:duration
//             atOffsetFromCenter:offset
//                  swipeableView:swipeableView];
//         break;
//     default:
//         break;
//     }
}

@end
