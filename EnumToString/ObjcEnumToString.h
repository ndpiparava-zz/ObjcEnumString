//
//  ObjcEnumToString.h
//  EnumToString
//
//  Created by ndpiparava on 04/03/17.
//  Copyright © 2017 ndpiparava. All rights reserved.
//

#import <Foundation/Foundation.h>

//1st Approach
#define enumString(arg) (@""#arg)
typedef enum CommentResponseStatus : NSUInteger {
    needconformation,
    passed,
    completed
}CommentResponseStatus;


//2nd Approach
typedef enum{
    kgood = 'good', 
    kNice = 'Nice'
}StudentProgressReport;



//Third Approcah to enum to string
typedef NS_ENUM(NSUInteger, Name) {
    NameNitin,
    NameSara,
};


@interface ObjcEnumToString : NSObject

//Note : this only for 4 char constant not longer than that
+ (NSString *)secondApproach_convertEnumToString :(StudentProgressReport)status;
+ (NSString *)thirdApproach_convertEnumToString :(Name )weekday;


@end
