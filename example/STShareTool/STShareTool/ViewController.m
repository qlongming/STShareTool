//
//  ViewController.m
//  STShareTool
//
//  Created by TangJR on 2/17/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "ViewController.h"
#import "STShareTool.h"

@interface ViewController ()

- (IBAction)popoverButtonTapped:(UIButton *)sender;

@property (strong, nonatomic) STShareTool *shareTool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)popoverButtonTapped:(UIButton *)sender {
    NSDictionary *shareContent = @{STShareTitleKey : @"SwiftGG",
                                   STShareContentKey : @"SwiftGG 最帅",
                                   STShareImageKey : [UIImage imageNamed:@"60"],
                                   STShareURLKey : @"http://www.swift.gg"};
    [self.shareTool shareToQQ:shareContent];
}

- (STShareTool *)shareTool {
    if (!_shareTool) {
        _shareTool = [STShareTool toolWithViewController:self];
    }
    return _shareTool;
}

@end