//
//  ViewController.m
//  PassingDataChallengeSolution
//
//  Created by Emmanuel Cuevas on 8/21/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
            DetailViewController *DetailVC =segue.destinationViewController;
            DetailVC.informationFromTextField = self.textField.text;
            DetailVC.delegate = self;
        }
    }
}

#pragma mark - ViewControllerDelegate

-(void)didUpdateText:(NSString *) text{
    
    self.textField.text = text;

}

#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.textField resignFirstResponder];
    return YES;
}

@end
