//
//  BaseTabBarController.m
//  oc_project
//
//  Created by liangcheng on 2021/2/23.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


/// 统一设置外观
+ (void)initialize {
    UITabBarItem *tabBarItem = nil;
    tabBarItem = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[self]];
    //iOS9以下这样设置
//    if (@available(iOS 9.0, *)) {
//        tabBarItem = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[self]];
//    }else {
//        tabBarItem = [UITabBarItem appearanceWhenContainedIn:self, nil];
//    }
    //设置tabbarItem的字体和颜色
    NSMutableDictionary *dicNormal = [NSMutableDictionary dictionary];
    dicNormal[NSForegroundColorAttributeName] = [UIColor colorWithHexString:@"#00a0ea"];
    dicNormal[NSFontAttributeName] = AdaptedFontSize(12);
    NSMutableDictionary *dicSelect = [NSMutableDictionary dictionary];
    dicSelect[NSForegroundColorAttributeName] = THEM_COLOR;
    dicSelect[NSFontAttributeName] = AdaptedFontSize(12);
    
    [tabBarItem setTitleTextAttributes:dicNormal forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:dicSelect forState:UIControlStateSelected];
    
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    //是否具有半透明效果
    [UITabBar alloc].translucent = NO;
}

@end
