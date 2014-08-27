//
//  VmDetailContainer.m
//  wincenterDemo01
//
//  Created by huadi on 14-8-20.
//  Copyright (c) 2014年 huadi. All rights reserved.
//

#import "VmDetailContainerVC.h"
#import "VmDetailPageVC.h"

@interface VmDetailContainerVC ()

@property VmDetailPageVC *pageVC;

@end

@implementation VmDetailContainerVC

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

- (IBAction)switchPage:(id)sender {
    
    [self switchButtonSelected:((UIView*)sender).tag];
    [self.pageVC switchPage:((UIView*)sender).tag];
}

- (IBAction)gobackAction:(id)sender {
      [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)showControlBtns:(id)sender {
    BOOL isHide = self.vmControlBtns.hidden;
    self.vmControlBtns.hidden = isHide == YES ? NO : YES;
 //   [self.view addSubview:self.vmControlBtns];
//    self.vmControlBtns.frame.origin.x = 922;
//    self.vmControlBtns.frame.origin.y = 22;
}
-(void)hideControlBtn{
    self.vmControlBtns.hidden = YES;
}
- (IBAction)openVm:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"虚拟机正在开机..." delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    [self hideControlBtn];
}
- (IBAction)shutdownVm:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"虚拟机正在关机..." delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    [self hideControlBtn];
}
- (IBAction)restartVm:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"虚拟机正在重启..." delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    [self hideControlBtn];
}
- (IBAction)migrateVm:(id)sender {
    [self hideControlBtn];
}


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"toVmPageVC"]){
        self.pageVC = segue.destinationViewController;
    }
}

-(void)switchButtonSelected:(int)index{
    self.button1.selected = NO;
    self.button2.selected = NO;
    self.button3.selected = NO;
    
    switch (index) {
        case 0:
            self.button1.selected = YES;
            break;
        case 1:
            self.button2.selected = YES;
            break;
        case 2:
            self.button3.selected = YES;
            break;
            
        default:
            break;
    }
}

@end
