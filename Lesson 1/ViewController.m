//
//  ViewController.m
//  Lesson 1
//
//  Created by Ivan Babich on 27.04.15.
//  Copyright (c) 2015 Ivan Babich. All rights reserved.
//

#import "ViewController.h"
#import "IBAnimation.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *view_ExternalYes;

@property (weak, nonatomic) IBOutlet UIView *view_ExternalNo;

@property (weak, nonatomic) IBOutlet UIView *view_YES;

@property (weak, nonatomic) IBOutlet UIView *view_NO;

- (IBAction)button_YES:(id)sender;

- (IBAction)button_NO:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isColorChanged = NO;
    
    [self type_View];
}

-(void) type_View {                              // Метод для типа view
    
    self.textField.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:0.10].CGColor;
    self.textField.layer.borderWidth = 1.0;
    self.textField.layer.cornerRadius = 5.0;
    
    self.view_ExternalYes.layer.borderColor = [UIColor brownColor].CGColor;
    self.view_ExternalYes.layer.borderWidth = 1.0;
    self.view_ExternalYes.layer.cornerRadius = 5.0;
    
    self.view_YES.layer.borderColor = [UIColor blackColor].CGColor;
    self.view_YES.layer.borderWidth = 1.0;
    self.view_YES.layer.cornerRadius = 5.0;
    
    self.view_ExternalNo.layer.borderColor = [UIColor brownColor].CGColor;       // Цвет линии
    self.view_ExternalNo.layer.borderWidth = 1.0;                               // Толщина линии
    self.view_ExternalNo.layer.cornerRadius = 5.0;                              // Радиус закругления view
    
    self.view_NO.layer.borderColor = [UIColor blackColor].CGColor;
    self.view_NO.layer.borderWidth = 1.0;
    self.view_NO.layer.cornerRadius = 5.0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - IBAction

- (IBAction)button_YES:(id)sender {        // Здесь идёт смена цветов на первом view
    
    if (!isColorChanged) {
        [IBAnimation change_CheckBox:self.view_YES Color:[UIColor brownColor]];
        [IBAnimation change_CheckBox:self.view_NO Color:[UIColor whiteColor]];
        [IBAnimation change_CheckBox:self.view_ExternalYes Color:[UIColor grayColor]];
        [IBAnimation change_CheckBox:self.view_ExternalNo Color:[UIColor brownColor]];
        
        isColorChanged = YES;
        isYES = YES;
    }
    else if (!isYES) {
        [IBAnimation change_CheckBox:self.view_YES Color:[UIColor brownColor]];
        [IBAnimation change_CheckBox:self.view_NO Color:[UIColor whiteColor]];
        [IBAnimation change_CheckBox:self.view_ExternalYes Color:[UIColor grayColor]];
        [IBAnimation change_CheckBox:self.view_ExternalNo Color:[UIColor brownColor]];
        
        isYES = YES;
    }

}

- (IBAction)button_NO:(id)sender {       // Здесь идёт смена цветов на втором view
    
       if (!isColorChanged) {
        [IBAnimation change_CheckBox:self.view_YES Color:[UIColor whiteColor]];
        [IBAnimation change_CheckBox:self.view_NO Color:[UIColor brownColor]];
        [IBAnimation change_CheckBox:self.view_ExternalYes Color:[UIColor brownColor]];
        [IBAnimation change_CheckBox:self.view_ExternalNo Color:[UIColor grayColor]];
        
        isColorChanged = YES;
        isYES = NO;
    }
       else if (isYES) {
           [IBAnimation change_CheckBox:self.view_YES Color:[UIColor whiteColor]];
           [IBAnimation change_CheckBox:self.view_NO Color:[UIColor brownColor]];
           [IBAnimation change_CheckBox:self.view_ExternalYes Color:[UIColor brownColor]];
           [IBAnimation change_CheckBox:self.view_ExternalNo Color:[UIColor grayColor]];
           
           isYES = NO;
       }
}
#pragma mark - UITextField

- (IBAction)textField_Changed:(id)sender {
    
    if (self.textField.text.length == 0) {
        [IBAnimation change_TextField:self.label_Change Alpha:1];
    }
    else
        [IBAnimation change_TextField:self.label_Change Alpha:0];
}

@end
