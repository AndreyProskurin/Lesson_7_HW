//
//  ViewController_4.m
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 31.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController_4.h"
#import "ViewController.h"

@interface ViewController_4 ()

@end

@implementation ViewController_4

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)BackButtonAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)chooseMenuButtonAction:(UIButton *)sender {
    [self.delegate chooseMenuName:sender.currentTitle];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)addSpicesSwitcherAction:(UISwitch *)sender {
    if ([sender isOn]) {
        [self.delegate addSpices:@"Да"];
        [sender setOn:YES];
    } else {
        [self.delegate addSpices:@"Нет"];
        [sender setOn:NO];
    }
}



@end
