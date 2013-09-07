//
//  main.m
//  windaloo
//
//  Created by Mario Stallone on 06/09/13.
//  Copyright (c) 2013 Mario Stallone. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import <PXEngine/PXEngine.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        [PXEngine licenseKey:@"2BTGL-JMVA1-OHP7D-UBBBD-ENCCE-U3G7L-NOC7H-8PDO7-6R1T0-38N37-KTEV7-41QBE-Q01A2-0UI4V-N3CNF-I2" forUser:@"mariostallone@gmail.com"];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
