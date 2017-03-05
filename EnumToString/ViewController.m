//
//  ViewController.m
//  EnumToString
//
//  Created by ndpiparava on 04/03/17.
//  Copyright © 2017 ndpiparava. All rights reserved.
//

#import "ViewController.h"
#import "ObjcEnumToString.h"

@implementation ViewController

- (void)viewDidLoad {
    
    //Here,  may not get autocompletion  but its workaround
    self.textOutPutFirst.text = enumString(needconformation);
    
    self.textOutPutSecond.text = [ObjcEnumToString secondApproach_convertEnumToString:kgood];
    self.textOutPutThird.text = [ObjcEnumToString thirdApproach_convertEnumToString:NameNitin];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
