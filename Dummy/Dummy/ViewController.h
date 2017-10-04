//
//  ViewController.h
//  Dummy
//
//  Created by yatheeswara reddy pulicherla on 6/13/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NestedList.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

{
    NSMutableArray * studentsArray;
}
-(int)sumArr:(NSMutableArray<NestedList *>*) arr :(int)depth;
@end

