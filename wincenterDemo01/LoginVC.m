//
//  LoginVC.m
//  wincenterDemo01
//
//  Created by huadi on 14-8-20.
//  Copyright (c) 2014年 huadi. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initializationeryteryt
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
- (IBAction)loginAction:(id)sender {
    NSString *msg = @"";
    if ([self.userName.text isEqualToString:@""]) {
        msg = @"用户名不能为空！";
    }else if([self.password.text isEqualToString:@""]){
        msg = @"密码不能为空！";
    }else if(!([self.userName.text isEqualToString:@"admin"] && [self.password.text isEqualToString:@"passw0rd"])) {
        msg = @"密码输入错误，请重新输入";
    }
    
    if ([msg isEqualToString:@""]) {
        UIViewController *targetView = [self.storyboard instantiateViewControllerWithIdentifier:@"DatacenterMainVC"];
        targetView.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:targetView animated:YES completion:nil];
        //[self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"DatacenterMainVC"] animated:YES];
    }else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }
    
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    //login validation; return No if validation failed;
    
    return YES;
}

- (IBAction)backToLogin:(UIStoryboardSegue*)segue{
    
}



@end
