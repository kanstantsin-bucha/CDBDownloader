//
//  CDBViewController.m
//  CDBDownloader
//
//  Created by Kanstantsin Bucha on 08/02/2016.
//  Copyright (c) 2016 Kanstantsin Bucha. All rights reserved.
//

#import "CDBViewController.h"
@import CDBDownloader;

@interface CDBViewController ()

@end

@implementation CDBViewController

#pragma mark - life cycle -

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL * URL = [NSURL URLWithString:@"http://www.pdf995.com/samples/pdf.pdf"];
    [self processDownloadingDocumentUsingURL:URL];
}

#pragma mark - private -

- (void)processDownloadingDocumentUsingURL:(NSURL *)URL {
    if (URL == nil) {
        return;
    }
    
    [CDBDownloader downloadFileAtURL:URL
                           progress:nil
                         completion:^(NSURL * downloadedFileURL, NSError *error) {
        if (error != nil) {
            [[NSFileManager new] removeItemAtURL:downloadedFileURL
                                           error:nil];
            return;
        }
                     
        NSLog(@" Download document to URL:\
        \r\n %@", downloadedFileURL);
    }];
}

@end
