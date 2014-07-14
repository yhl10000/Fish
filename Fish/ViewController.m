//
//  ViewController.m
//  Fish
//
//  Created by Fish Yu on 14-7-9.
//  Copyright (c) 2014年 yhl10000@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import <AFNetworking/UIImageView+AFNetworking.h>


@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIImageView *backgroundImageView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.backgroundImageView setImageWithURL:[NSURL URLWithString:@"http://g.hiphotos.baidu.com/image/pic/item/77c6a7efce1b9d160b6d396df1deb48f8c546410.jpg"] placeholderImage:[UIImage imageNamed: nil]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString*) theNameOfAuthor{
    NSString * sss = @"fish";
    return [sss lowercaseString];
}

@end
