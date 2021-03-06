//
//  AppDelegate.m
//  FireEquipment
//
//  Created by mc on 2017/10/23.
//  Copyright © 2017年 mc. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabBarViewController.h"
#import "RegistViewController.h"

#import "LoginViewController.h"
//#import "HomeViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window setRootViewController:[[RootTabBarViewController alloc]init]];
    [self.window makeKeyAndVisible];
    [self deleteUserDefauts];
    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
    return YES;
}


#pragma mark ========== 删除保存在本地的临时数据==========
-(void)deleteUserDefauts{
    
    NSUserDefaults *defauts=[NSUserDefaults standardUserDefaults];
    [defauts removeObjectForKey:@"KbrandID"];
    [defauts removeObjectForKey:@"KdetailImageArr"];
//    [defauts removeObjectForKey:@"userInfoDic"];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
