//
//  ViewController.m
//  Dummy
//
//  Created by yatheeswara reddy pulicherla on 6/13/17.
//  Copyright © 2017 yatheeswara reddy pulicherla. All rights reserved.
//

#import "ViewController.h"
#import "NestedList.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    arr[0] = @"1";
    arr[1] = @"2";
    arr[2] = @"3";
    [arr addObject:@"4"];
    [arr insertObject:@"6" atIndex:1];
    NSLog(@"%@",arr);
    
    
    
    
    
//    
//    NSString *str = [[NSString alloc]init];
//    str = @"Hello Welcome to Objective C";
//    NSString *str1 = @"hello";
//    NSLog(@"%@",str1);
//    int length = (int)[str1 length];
//    NSLog(@"%d",length);
//    
//    int x = 5;
//    float y = 4.4;
//    NSString *formatString = [NSString stringWithFormat:@"%d/%0.1f",x,y];
//    NSLog(@"%@",formatString);
//    
//    NSString *upr = [str uppercaseString];
//    NSLog(@"%@",upr);
//    
//    NSLog(@"%@", [upr lowercaseString]);
//    
//    NSArray *arr = [upr componentsSeparatedByString:@" "];
//    NSLog(@"array is %@", arr);
//    NSLog(@"sub str is %@", [upr substringFromIndex:5]);
//    NSLog(@"sub str is %@", [upr substringToIndex:3]);
//    
//    NSMutableString *mutStr = [[NSMutableString alloc]init];
//    [mutStr setString:@"hello"];
//    [mutStr appendString:@"whastsup"];
//    NSLog(@"mut str is %@",mutStr);
//    
//    int i = 0;
//    while (i<10) {
//        NSLog(@"Hello %d",i);
//        i++;
//    }
//    NSMutableDictionary *mutDic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"1",@"one",@"2",@"two", nil];
//    NSLog(@"dic is %@", mutDic);
//    NSString *str2 = [mutDic objectForKey:@"two"];
//    NSLog(@"%@",str2);
//    
//
    NSString *inputStr = @"cadogcatchcat";
    NSLog(@"%d",[self getTheCount:inputStr]);

    studentsArray = [[NSMutableArray alloc]initWithObjects:@"student1",@"Student2",@"Student3",nil];
    //NestedList *fst = [[NestedList alloc]init];
    //fst nestedList:<#(int)#> :<#(NSMutableArray *)#>;
}

-(int)sumArr:(NSMutableArray<NestedList *>*) arr :(int)depth{
    int sum = 0;
    for (int i = 0; i<arr.count; i++) {
        NestedList *curr = (NestedList*)arr[i];
        if (curr.isInteger) {
            sum += curr.value;
        }else{
            sum += [self sumArr:curr.getList :depth+1];
        }
    }
    return sum;
}



-(int)getTheCount:(NSString*) inputStr{
    int n = 2;
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    for (int i = 0; i <= inputStr.length - n; i++){
        NSString *subStr = [inputStr substringFromIndex:i];
        NSString *estStr = [subStr substringToIndex:n];
        if([dict objectForKey:estStr]){
            dict[estStr] = @([dict[estStr]integerValue]+1);
        }else{
            dict[estStr] = @"1";
        }
        
    }
    NSArray *arr = [dict allValues];
    NSArray *keyArr = [dict allKeys];
    int maxValue = 0;
    NSString *maxStr = [[NSString alloc]init];
    for (int i =0; i<arr.count; i++) {
        int ind = [arr[i]intValue];
        if (maxValue < ind) {
            maxValue = ind;
            maxStr = keyArr[i];
        }
    }
    return maxValue;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [studentsArray count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Students";
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    //Configure cell
    cell.textLabel.text = [studentsArray objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

