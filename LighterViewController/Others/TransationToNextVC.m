//
//  TransationToNextVC.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/5.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "TransationToNextVC.h"
#import "PositionViewController.h"
#import "DetailViewController.h"

@implementation TransationToNextVC

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.7;
}
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    UINavigationController *nav = (UINavigationController*)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    PositionViewController *fromVC = (PositionViewController *)nav.topViewController;
    DetailViewController *toVC = (DetailViewController*)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    [UIView animateWithDuration:0.3 animations:^{
        fromVC.tableView.hidden = YES;
        fromVC.view.backgroundColor = [UIColor blackColor];
        CGAffineTransform transform = CGAffineTransformMakeScale(0.9, 0.9);
        fromVC.backGroundImage.transform = transform;
    }];
    
    UIView *alphaView = [UIView new];
    alphaView.frame = fromVC.view.bounds;
    alphaView.backgroundColor = [UIColor blackColor];
    alphaView.alpha = .4;
    [fromVC.view insertSubview:alphaView belowSubview:fromVC.coverView];
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    [containerView sendSubviewToBack:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.coverView.frame = CGRectMake(0, 0, 375, 667);
                     }
                     completion:^(BOOL finished) {
                         fromVC.view.backgroundColor = [UIColor colorWithRed:0.91 green:0.94 blue:0.94 alpha:1];
                         [fromVC.backGroundImage removeFromSuperview];
                         [fromVC.coverView removeFromSuperview];
                         [alphaView removeFromSuperview];
                         [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
                     }];
    
}


@end
