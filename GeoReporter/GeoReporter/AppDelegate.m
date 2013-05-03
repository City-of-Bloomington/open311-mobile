/**
 * @copyright 2013 City of Bloomington, Indiana. All Rights Reserved
 * @author Cliff Ingham <inghamn@bloomington.in.gov>
 * @license http://www.gnu.org/licenses/gpl.txt GNU/GPLv3, see LICENSE.txt
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 */

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // TabBar background
    UIImage* tabBarBackground = [UIImage imageNamed:@"tabBar.png"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    [[UITabBar appearance] setSelectionIndicatorImage:[[UIImage alloc] init]];
    
    
    // Color of TabBar item title ( Normal State )
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIColor colorWithRed:39/255.0 green:38/255.0 blue: 38/255.0 alpha:1.0], UITextAttributeTextColor,
                                                       nil] forState:UIControlStateNormal];
    // Color of TabBar title ( Selected )
    UIColor *titleHighlightedColor = [UIColor whiteColor];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       titleHighlightedColor, UITextAttributeTextColor,
                                                       nil] forState:UIControlStateSelected];
    // Background for default button for top bar
    UIImage *backButtonImage = [[UIImage imageNamed:@"backButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 6)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    // Background for back button for top bar
    UIImage *defaultButtonImage = [[UIImage imageNamed:@"defaultButton"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 6, 0, 6)];
    [[UIBarButtonItem appearance] setBackgroundImage:defaultButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    // Custom icons for Tab Bar
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *homeIcon = [tabBar.items objectAtIndex:0];
    UITabBarItem *chatIcon = [tabBar.items objectAtIndex:1];
    UITabBarItem *archiveIcon = [tabBar.items objectAtIndex:2];
    UITabBarItem *serversIcon = [tabBar.items objectAtIndex:3];
    
    [homeIcon setFinishedSelectedImage:[UIImage imageNamed:@"homeOn.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"homeOff.png"]];
    [chatIcon setFinishedSelectedImage:[UIImage imageNamed:@"chatOn.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"chatOff.png"]];
    [archiveIcon setFinishedSelectedImage:[UIImage imageNamed:@"archiveOn.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"archiveOff.png"]];
    [serversIcon setFinishedSelectedImage:[UIImage imageNamed:@"serverOn.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"serverOff.png"]];
    
    return YES;
}

@end
