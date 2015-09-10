//
//  ViewController.h
//  PassingDataChallengeSolution
//
//  Created by Emmanuel Cuevas on 8/21/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"


@interface ViewController : UIViewController <ViewControllerDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;


@end

