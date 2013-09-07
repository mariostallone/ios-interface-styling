//
//  main.m
//  NUIDemo
//
//  Created by Mario Stallone on 07/09/13.
//  Copyright (c) 2013 Mario Stallone. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "NUISettings.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        [NUISettings init];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
