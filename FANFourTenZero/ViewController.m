//
//  ViewController.m
//  FANFourTenZero
//
//  Created by Maximilian Tagher on 5/6/15.
//  Copyright (c) 2015 Heyzap. All rights reserved.
//

#import "ViewController.h"
@import FBAudienceNetwork;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FBAdView *adView = [[FBAdView alloc] initWithPlacementID:@"PLACEMENT_ID"
                                                      adSize:kFBAdSizeHeight50Banner
                                          rootViewController:self];
//    adView.frame = CGRectMake(0, 0, 320, 50); // Uncommenting this code causes the banner to load, but the auto-expanding banner no longer works.
    [adView loadAd];
    [self.view addSubview:adView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
