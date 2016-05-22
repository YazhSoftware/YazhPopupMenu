//
//  ViewController.m
//  Demo
//
//  Created by  Yazh  on 2016/1/22.
//  Copyright © 2016Yazh. All rights reserved.
//

#import "DemoMenu.h"
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *label;

@end


@implementation ViewController

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(__menuButtonClickedNotification:)
                                                name:YazhPopupMenuButtonClickedNotification
                                              object:nil];
    
    
}

- (void)__menuButtonClickedNotification:(NSNotification *)sender
{
    NSNumber *tag = sender.object;
    _label.text   = [NSString stringWithFormat:@"You clicked at %@", tag];
}

@end
