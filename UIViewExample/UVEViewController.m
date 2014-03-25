//
//  UVEViewController.m
//  UIViewExample
//
//  Created by mito on 2014/03/25.
//  Copyright (c) 2014年 mito. All rights reserved.
//

#import "UVEViewController.h"
#import "UVEView.h"
@interface UVEViewController ()

@end

@implementation UVEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UVEView *view = [[UVEView alloc] initWithFrame:CGRectMake(20, 20, 280, 80)];
    [self.view addSubview:view];
    UIView *xibView = [[NSBundle mainBundle] loadNibNamed:@"UVEXIBView" owner:nil options:nil][0];
    [self.view addSubview:xibView];
}
- (IBAction)buttonTapped:(id)sender {
    UIViewController *vc = [[UIViewController alloc] initWithNibName:@"UVEXIBView" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
