//
//  ViewControllersProtocol.h
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 30.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllersProtocol <NSObject>

- (void)changePaymentMethodName:(NSString *)paymentMethodName;

@end
