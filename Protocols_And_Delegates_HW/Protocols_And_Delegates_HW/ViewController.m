//
//  ViewController.m
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 30.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController.h"
#import "ViewController_2.h"
#import "ViewControllersProtocol.h"

@interface ViewController () <ViewControllersProtocol>

@property (weak, nonatomic) IBOutlet UILabel *paymentMethodTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController_2 *viewController_2 = segue.destinationViewController;
    viewController_2.delegate = self;
}

#pragma mark - ViewControllersProtocol -

- (void)changePaymentMethodName:(NSString *)paymentMethodName {
    self.paymentMethodTextLabel.text = [NSString stringWithFormat:@"Способ оплаты: %@", paymentMethodName];
}

@end
