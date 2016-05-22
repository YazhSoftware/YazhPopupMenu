// DemoMenu.m
//
// Created By  Yazh  <shinnren.pan@gmail.com> on 2016/1/22.
// Copyright (c) 2016Yazh. All rights reserved.

#import "DemoMenu.h"


@implementation DemoMenu

#pragma mark - NSObject
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.otherButtonsAnimationDuration  = .5f;
    self.otherButtonsAnimationDamping   = .4f;
    self.otherButtonsPosionStartAngle   = -90.0f;
    self.othersButtonDistanceFromCenter = 120.0f;
    self.mainButtonAnimationDuration    = .5f;
    self.mainButtonAnimationDamping     = .6f;
}

#pragma mark - YazhPopupMenuProtocol
- (void)menuWillOpen
{
    _effectView.hidden = NO;
}

- (void)menuDidOpen
{
    
}

- (void)menuWillClose
{
    
}

- (void)menuDidClose
{
    _effectView.hidden = YES;
}

@end
