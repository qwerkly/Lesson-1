//
//  IBAnimation.m
//  Lesson 1
//
//  Created by Ivan Babich on 27.04.15.
//  Copyright (c) 2015 Ivan Babich. All rights reserved.
//

#import "IBAnimation.h"

@implementation IBAnimation

//  Этот метод реализует анимацию UIView

+(void) change_CheckBox:(UIView *) view Color:(UIColor *) color {
    
    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionFade;                     // Тип анимации
    animation.duration = 0.35;                              // Время работы анимации
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;
    
}

//  Этот метод реализует анимацию элемента UILabel на элементе UITextField

+(void) change_TextField:(UILabel *) label Alpha:(int) alpha {
    
    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionPush;
    if (alpha == 0) {
        animation.subtype = kCATransitionFromLeft;
    }
    else
        
        animation.subtype = kCATransitionFromRight;
        
    animation.duration = 0.35;
    [label.layer addAnimation:animation forKey:@"Fade"];
    label.alpha = alpha;
    
}

@end
