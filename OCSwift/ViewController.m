//
//  ViewController.m
//  OCSwift
//
//  Created by 郑东喜 on 2017/7/31.
//  Copyright © 2017年 郑东喜. All rights reserved.
//

#import "ViewController.h"
#import "OCSwift-Swift.h"

@interface ViewController () {
    NSString *str124;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [XX logWithStr:@"dddd"];

    XX *l = [XX new];
    str124 = l.logStr;
    NSLog(@"ddd%@",str124);
    
    TestSwift * d = [[TestSwift alloc] init];
    str124 = [d thentyWithDd:@"aslkdjsaljdlsa"];
    NSLog(@"%@",str124);
    
    
    BOOL ff = l.isPlatForm;
    NSLog(@"%d",ff);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    TestSwift *d = [TestSwift new];
    [self.navigationController pushViewController:d animated:false];
}

@end
