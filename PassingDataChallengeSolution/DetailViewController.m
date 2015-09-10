//
//  DetailViewController.m
//  PassingDataChallengeSolution
//
//  Created by Emmanuel Cuevas on 8/21/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.labelDetail.text = self.informationFromTextField;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateButton:(id)sender {
    
    //With this code you are saying to the label that acquires the information from the textfield, also you are passing the information by the delegate property.
    self.labelDetail.text = self.textfield.text;
    [self.delegate didUpdateText:self.textfield.text];
}
@end
