//
//  ViewController.h
//  JSON
//
//  Created by 王福滨 on 2017/5/8.
//  Copyright © 2017年 YY Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_arrayAirline;
}


@end

