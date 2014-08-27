//
//  PoolDetailContainer.m
//  wincenterDemo01
//
//  Created by huadi on 14-8-19.
//  Copyright (c) 2014年 huadi. All rights reserved.
//

#import "PoolDetailContainerVC.h"
#import "PoolDetailPageVC.h"

@interface PoolDetailContainerVC ()

@property PoolDetailPageVC *pageVC;

@end

@implementation PoolDetailContainerVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//- (IBAction)CloseAction:(id)sender {
//    NSLog(@"aaa");
//}

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"toPoolPageVC"]){
        self.pageVC = segue.destinationViewController;
    }
}

- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
