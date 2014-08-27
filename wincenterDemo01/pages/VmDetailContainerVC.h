//
//  VmDetailContainer.h
//  wincenterDemo01
//
//  Created by huadi on 14-8-20.
//  Copyright (c) 2014年 huadi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VmDetailContainerVC : UIViewController
@property (strong, nonatomic) IBOutlet UIView *vmControlBtns;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

-(void)switchButtonSelected:(int)index;
-(void)hideControlBtn;
@end
