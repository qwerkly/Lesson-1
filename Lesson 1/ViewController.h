//
//  ViewController.h
//  Lesson 1
//
//  Created by Ivan Babich on 27.04.15.
//  Copyright (c) 2015 Ivan Babich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    
    BOOL isYES;
    BOOL isColorChanged;
    BOOL isPlaceHolderHiden;
    
}

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label_Change;

- (IBAction)textField_Changed:(id)sender;

@end

