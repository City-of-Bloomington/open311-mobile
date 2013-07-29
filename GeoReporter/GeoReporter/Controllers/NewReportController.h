//
//  NewReportController.h
//  GeoReporter
//
//  Created by Marius Constantinescu on 7/20/13.
//  Copyright (c) 2013 City of Bloomington. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Report.h"
#import "TextEntryDelegate.h"

@interface NewReportController : UITableViewController <TextEntryDelegate>
@property NSDictionary *service;
@property Report *report;
@end