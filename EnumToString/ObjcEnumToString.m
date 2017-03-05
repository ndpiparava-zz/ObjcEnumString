//
//  ObjcEnumToString.m
//  EnumToString
//
//  Created by ndpiparava on 04/03/17.
//  Copyright © 2017 ndpiparava. All rights reserved.
//

#import "ObjcEnumToString.h"

NSString *const kNitin = @"Nitin";
NSString *const kSara = @"Sara";

@implementation ObjcEnumToString

+(NSString *)secondApproach_convertEnumToString:(StudentProgressReport)status {
    
    char *str = calloc(sizeof(kgood)+1, sizeof(char));
    int  goodsASInteger = NSSwapInt((unsigned int)kgood);
    memcpy(str, (const void*)&goodsASInteger, sizeof(goodsASInteger));
    NSLog(@"%s", str);
    NSString *enumString = [NSString stringWithUTF8String:str];
    free(str);
    
    return enumString;
}

+ (NSString *)thirdApproach_convertEnumToString :(Name)weekday {
    
    __strong NSString **pointer = (NSString **)&kNitin;
    pointer +=weekday;
    return *pointer;
}



@end
