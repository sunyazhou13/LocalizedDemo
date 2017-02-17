//
//  ViewController.m
//  LocalizedDemo
//
//  Created by sunyazhou on 2017/2/17.
//  Copyright © 2017年 Baidu, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 切换语言前
    NSArray *langArr1 = [[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"];
    NSString *language1 = langArr1.firstObject;
    NSLog(@"模拟器语言切换之前：%@",language1);
//
    // 切换语言
    NSArray *lans = @[@"en"];
    [[NSUserDefaults standardUserDefaults] setObject:lans forKey:@"AppleLanguages"];
//
//    // 切换语言后
//    // 切换语言后
//    NSArray *langArr2 = [[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"];
//    NSString *language2 = langArr2.firstObject;
//    NSLog(@"模拟器语言切换之后：%@",language2);
    
    
//    NSString *btnTitle = NSLocalizedString(@"click", nil);
    NSString *btnTitle = NSLocalizedStringFromTable(@"click", @"AA", nil);
    [self.button setTitle:btnTitle forState:UIControlStateNormal];
    
    NSString *imageName = NSLocalizedString(@"1.jpg", nil);
    self.imageview.image = [UIImage imageNamed:imageName];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
