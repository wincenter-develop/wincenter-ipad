//
//  HostDetailContainer.m
//  wincenterDemo01
//
//  Created by huadi on 14-8-20.
//  Copyright (c) 2014年 huadi. All rights reserved.
//

#import "HostDetailContainerVC.h"
#import "HostDetailPageVC.h"

@interface HostDetailContainerVC ()

@property HostDetailPageVC *pageVC;

@end

@implementation HostDetailContainerVC

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
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)switchPage:(id)sender {
    [self.pageVC switchPage:((UIView*)sender).tag];
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"toHostPageVC"]){
        self.pageVC = segue.destinationViewController;
    }
}

-(void)switchButtonSelected:(int)index{
    self.button1.selected = NO;
    self.button2.selected = NO;
    self.button3.selected = NO;
    self.button4.selected = NO;
    self.button5.selected = NO;
    
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
        case 3:
            self.button4.selected = YES;
            break;
        case 4:
            self.button5.selected = YES;
            break;
        default:
            break;
    }
}


@end
