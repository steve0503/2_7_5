//
//  FirstViewController.m
//  2_7_5
//
//  Created by SDT-1 on 2014. 1. 13..
//  Copyright (c) 2014년 steve. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FirstViewController


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    [textField resignFirstResponder];
    
    return YES;
    
}


-(void)textFieldDidEndEditing:(UITextField *)textField{
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    delegate.sharedStr = self.textField.text;
    
    
}


-(void)viewWillAppear:(BOOL)animated{
    
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    self.textField.text = delegate.sharedStr;
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
