//
//  ViewController.m
//  KNAPP
//
//  Created by devzkn on 29/06/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "ViewController.h"

#import "KNTestWebViewController.h"
#import "HCPEnvrionmentalVariables.h"
#import "KNFeedbackViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad{
    [super viewDidLoad];
//    [self setupFeedback];presentViewController 不能放在viewDidLoad
}



- (void)setupFeedback{
    
    
    //         跳转到反馈页面
    KNFeedbackViewController *feedbackVC = [[KNFeedbackViewController alloc] init];
//    feedbackVC.image = ;//截图必须在弹反馈页面之前create。设置默认的图片
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:feedbackVC];
    [self presentViewController:nav animated:YES completion:nil];
    //            [self.navigationController pushViewController:feedbackVC animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self setupFeedback];
//    [self setupKNTestWebViewController];
}
//app嵌入H5页面的通用模版的 例子
- (void)setupKNTestWebViewController{

    
    [[HCPEnvrionmentalVariables shareEnvrionmentalVariables] setEnvrionmentalVariables:ENVRIONMENTAL_VARIABLES_UAT];
    
    
    KNTestWebViewController *vc = [[KNTestWebViewController alloc]init];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}


@end
