//
//  HostDetailVC.m
//  wincenterDemo01
//
//  Created by huadi on 14-8-18.
//  Copyright (c) 2014年 huadi. All rights reserved.
//

#import "HostDetailPageVC.h"
#import "HostDetailContainerVC.h"

@interface HostDetailPageVC ()

@property NSArray *HostDetailPages;
@property int _previousIndex;
@property int _selectedIndex;
@property int showIndex;

@end

@implementation HostDetailPageVC

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
    self.HostDetailPages = @[
        [self.storyboard instantiateViewControllerWithIdentifier:@"HostDetailBaseinfo"],
        [self.storyboard instantiateViewControllerWithIdentifier:@"HostDetailPerformance"],
        [self.storyboard instantiateViewControllerWithIdentifier:@"StorageCollectionVCFull"],
        [self.storyboard instantiateViewControllerWithIdentifier:@"HostDetailNetwork"],
        [self.storyboard instantiateViewControllerWithIdentifier:@"HostDetailNic"]
    ];
    [self setViewControllers:@[self.HostDetailPages[0]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    self._previousIndex = 0;
    self.dataSource = self;
    self.delegate = self;
}
- (void) switchPage:(int)index{
    [self setViewControllers:@[self.HostDetailPages[index]] direction:(index>self._previousIndex ? UIPageViewControllerNavigationDirectionForward : UIPageViewControllerNavigationDirectionReverse) animated:YES completion:nil];
    self._previousIndex = index;
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSUInteger index =  [self.HostDetailPages indexOfObject:viewController];
    if (index == 0) {
        return nil;
    }else{
        index--;
        return self.HostDetailPages[index];
    }
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index =  [self.HostDetailPages indexOfObject:viewController];
    if (index == self.HostDetailPages.count - 1) {
        return nil;
    }else{
        index++;
        return self.HostDetailPages[index];
    }
    
}

//背景图片切换
- (void)pageViewController:(UIPageViewController *)pageViewController willTransitionToViewControllers:(NSArray *)pendingViewControllers{
    self._selectedIndex = [self.HostDetailPages indexOfObject:pendingViewControllers[0]];
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray *)previousViewControllers transitionCompleted:(BOOL)completed{
    if(completed){
        self.showIndex = self._selectedIndex;
        [((HostDetailContainerVC*)self.parentViewController) switchButtonSelected:self._selectedIndex];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
