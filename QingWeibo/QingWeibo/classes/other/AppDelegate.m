//
//  AppDelegate.m
//  QingWeibo
//
//  Created by guiqing on 8/5/14.
//  Copyright (c) 2014 Personal. All rights reserved.
//

#import "AppDelegate.h"
#import "NewFeatureController.h"
#import "MainController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.window.backgroundColor = [UIColor whiteColor];
    
    //1.get the virsion from plist
        //NSString --CFStringRef
    //1.1 get the constant variable
    NSString *key = (NSString *)kCFBundleVersionKey;
    //1.2 get version from Info.plist
    NSString *version =[NSBundle mainBundle].infoDictionary[key];
    //1.3 get cur verion from sandbox
    NSString *saveVersion =[[NSUserDefaults standardUserDefaults] objectForKey:key];
    // 1.4 judge
//    if ([version isEqualToString:saveVersion]) {
//        //is not first time,show main
//        self.window.rootViewController=[[MainController alloc]init];
//        
//    }else{
        //you are first use this version,show newFeature
        self.window.rootViewController =[[NewFeatureController alloc]init];
        
        
        //write version to sandbox
        [[NSUserDefaults standardUserDefaults]setObject:version forKey:key];
        //write is to the sandbox instantly ![optional]
        [[NSUserDefaults standardUserDefaults]synchronize];
    
//    }
    
    
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
