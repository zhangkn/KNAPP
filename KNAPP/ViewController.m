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
@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //    IPOpenShopMainViewController *openShopMainViewController =[[IPOpenShopMainViewController alloc]init];
    
    
    [[HCPEnvrionmentalVariables shareEnvrionmentalVariables] setEnvrionmentalVariables:ENVRIONMENTAL_VARIABLES_UAT];
    
    
    KNTestWebViewController *vc = [[KNTestWebViewController alloc]init];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}


@end
