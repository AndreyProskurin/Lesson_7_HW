//
//  ViewController_4.h
//  Protocols_And_Delegates_HW
//
//  Created by Andrey Proskurin on 31.08.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllersProtocol.h"

@interface ViewController_4 : UIViewController

@property (weak, nonatomic) id <ViewControllersProtocol> delegate;

@end
