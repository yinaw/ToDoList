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


NSMutableArray *recipes;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.helloLabel.text = @"default text";
    
    [self.clickyButton setTitle:@"Clicky" forState:UIControlStateNormal];
    
    recipes = [NSMutableArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleButtonClick:(id)sender {
    self.helloLabel.text = self.customTextFiled.text;
    [recipes addObject:@"blahblah"];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.customTextFiled resignFirstResponder];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

@end
