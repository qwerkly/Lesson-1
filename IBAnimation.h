//
//  IBAnimation.h
//  Lesson 1
//
//  Created by Ivan Babich on 27.04.15.
//  Copyright (c) 2015 Ivan Babich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IBAnimation : NSObject

+(void) change_CheckBox:(UIView *) view Color:(UIColor *) color;
+(void) change_TextField:(UILabel *) label Alpha:(int) alpha;

@end
