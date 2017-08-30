//
//  ViewController_2.m
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 30.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController_2.h"
#import "ViewControllersProtocol.h"

@interface ViewController_2 ()

@end

@implementation ViewController_2

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)BackButtonAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)PaymentMethodButtonAction:(UIButton *)sender {
    [self.delegate changePaymentMethodName:sender.currentTitle];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
