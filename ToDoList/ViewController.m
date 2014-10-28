//
//  ViewController.m
//  ToDoList
//
//  Created by Yina WU on 10/26/14.
//  Copyright (c) 2014 Yina WU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.helloLabel.text = @"default text";
    
    [self.clickyButton setTitle:@"Clicky" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleButtonClick:(id)sender {
    self.helloLabel.text = self.customTextFiled.text;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.customTextFiled resignFirstResponder];
}

@end
