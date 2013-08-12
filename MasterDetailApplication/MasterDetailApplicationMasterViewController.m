//
//  MasterDetailApplicationMasterViewController.m
//  MasterDetailApplication
//
//  Created by changhu on 13-8-12.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "MasterDetailApplicationMasterViewController.h"

#import "MasterDetailApplicationDetailViewController.h"

@interface MasterDetailApplicationMasterViewController () {

}
@end

@implementation MasterDetailApplicationMasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //设置根视图控制器的title
        self.title = @"主界面";
    }
    return self;
}
							
- (void)dealloc
{
    [_detailViewController release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //通过编码添加按钮并设置点击按钮调用nextView方法
    UIBarButtonItem *nextBtn = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(nextView:)] autorelease];
    
    //设置右边按钮
    self.navigationItem.rightBarButtonItem = nextBtn;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)nextView:(id)sender
{
    NSLog(@"insert new object");
    
    MasterDetailApplicationDetailViewController *detail = [[MasterDetailApplicationDetailViewController alloc]initWithNibName:@"MasterDetailApplicationDetailViewController" bundle:nil];
    
    NSLog(@"create detail view controller");
    self.detailViewController = detail;
    
    [detail release];
    
    NSLog(@"next view");
    
    [self.navigationController pushViewController:self.detailViewController animated:YES];

}

@end
