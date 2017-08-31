//
//  ViewController_3.m
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 31.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController_3.h"

@interface ViewController_3 () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *clientNameOutlet;

@end

@implementation ViewController_3

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (IBAction)BackButtonAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)confirmClientButtonAction:(UIButton *)sender {
    if (![_clientNameOutlet.text isEqualToString:@""]) {
        [self.delegate confirmClientName:_clientNameOutlet.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
