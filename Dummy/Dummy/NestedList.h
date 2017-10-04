//
//  NestedList.h
//  Dummy
//
//  Created by yatheeswara reddy pulicherla on 7/17/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NestedList : NSObject{
}
@property (nonatomic) int value;
@property (strong, nonatomic) NSMutableArray *nestedArr;
-(void)nestedList:(int) val: (NSMutableArray*)nestedList;
-(Boolean)isInteger;
-(NSMutableArray*)getList;
@end
