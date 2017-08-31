//
//  ViewController.m
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 30.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController.h"
#import "ViewController_2.h"
#import "ViewController_3.h"
#import "ViewController_4.h"
#import "ViewControllersProtocol.h"

@interface ViewController () <ViewControllersProtocol>

@property (weak, nonatomic) IBOutlet UILabel *paymentMethodTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *clientNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *menuNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *spicesLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"paymentMethodSegue"]) {
        ViewController_2 *viewController_2 = segue.destinationViewController;
        viewController_2.delegate = self;
    }
    if ([segue.identifier isEqualToString:@"confirmNameSegue"]) {
        ViewController_3 *viewController_3 = segue.destinationViewController;
        viewController_3.delegate = self;
    }
    if ([segue.identifier isEqualToString:@"chooseMenuSegue"]) {
        ViewController_4 *viewController_4 = segue.destinationViewController;
        viewController_4.delegate = self;
    }
}

#pragma mark - ViewControllersProtocol -

- (void)changePaymentMethodName:(NSString *)paymentMethodName {
    self.paymentMethodTextLabel.text = [NSString stringWithFormat:@"Способ оплаты: %@", paymentMethodName];
}

- (void)confirmClientName:(NSString *)clientName {
    self.clientNameLabel.text = [NSString stringWithFormat:@"Имя: %@", clientName];
}

- (void)chooseMenuName:(NSString *)menuName {
    self.menuNameLabel.text = [NSString stringWithFormat:@"Меню: %@", menuName];
}

- (void)addSpices:(NSString *)spices {
    self.spicesLabel.text = [NSString stringWithFormat:@"Доп. набор специй: %@", spices];
}

@end
