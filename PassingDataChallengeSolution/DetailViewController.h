//
//  DetailViewController.h
//  PassingDataChallengeSolution
//
//  Created by Emmanuel Cuevas on 8/21/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewControllerDelegate <NSObject>

-(void)didUpdateText:(NSString *) text;

@end

@interface DetailViewController : UIViewController

@property (weak, nonatomic) id <ViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *labelDetail;
@property (strong, nonatomic) NSString *informationFromTextField;
@property (weak, nonatomic) IBOutlet UITextField *textfield;

- (IBAction)updateButton:(id)sender;

@end
