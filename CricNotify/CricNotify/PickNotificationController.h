//
//  PickNotificationController.h
//  CricNotify
//
//  Created by yatheeswara reddy pulicherla on 6/13/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickNotificationController : UITableViewController{
    NSMutableArray *picksArray;
}

@property (nonatomic, strong) NSString *match;
@end
