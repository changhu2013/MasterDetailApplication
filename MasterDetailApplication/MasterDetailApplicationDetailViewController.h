//
//  MasterDetailApplicationDetailViewController.h
//  MasterDetailApplication
//
//  Created by changhu on 13-8-12.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterDetailApplicationDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
