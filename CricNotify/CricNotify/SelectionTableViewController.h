//
//  SelectionTableViewController.h
//  CricNotify
//
//  Created by yatheeswara reddy pulicherla on 6/13/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectionTableViewController : UITableViewController{
    NSMutableArray *Team1Array, *Team2Array;

}
@property (nonatomic, strong) NSString *match;
@property (nonatomic, strong) NSString *selection;
@end
