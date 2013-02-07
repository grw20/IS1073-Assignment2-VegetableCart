//
//  VCViewController.h
//  IS1073-Assignment2-VegetableCart
//
//  Created by Geoffrey Wolf on 2/7/13.
//  Copyright (c) 2013 Geoffrey Wolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray * cart;

@end
