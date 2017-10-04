//
//  NestedList.m
//  Dummy
//
//  Created by yatheeswara reddy pulicherla on 7/17/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

#import "NestedList.h"

@implementation NestedList
@synthesize value,nestedArr;
-(void)nestedList:(int) val: (NSMutableArray*)nestedList{
    value = val;
    nestedArr = nestedList;
}
-(Boolean)isInteger{
    
    return [self value];
}
-(NSMutableArray*)getList{
    return nestedArr;
}

@end
