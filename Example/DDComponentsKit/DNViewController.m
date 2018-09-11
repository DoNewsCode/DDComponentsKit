//
//  DNViewController.m
//  DDComponentsKit
//
//  Created by 540563689@qq.com on 09/10/2018.
//  Copyright (c) 2018 540563689@qq.com. All rights reserved.
//

#import "DNViewController.h"
#import "TGHeaderFooterViewController.h"

@interface DNViewController ()

@end

@implementation DNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


}
- (IBAction)btnClick:(UIButton *)sender {
    NSLog(@"####");
    TGHeaderFooterViewController *vc = [[TGHeaderFooterViewController alloc] init];
    [self.navigationController pushViewController: vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
