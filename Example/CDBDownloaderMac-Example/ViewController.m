//
//  ViewController.m
//  CDBDownloaderMac-Example
//
//  Created by Bucha Kanstantsin on 4/10/17.
//  Copyright © 2017 Kanstantsin Bucha. All rights reserved.
//

#import "ViewController.h"
@import CDBDownloader;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL * URL = [NSURL URLWithString: @"http://www.pdf995.com/samples/pdf.pdf"];
    [self processDownloadingDocumentUsingURL: URL];
}

#pragma mark - private -

- (void)processDownloadingDocumentUsingURL:(NSURL *)URL {
    if (URL == nil) {
        return;
    }
    
    [CDBDownloader downloadFileAtURL: URL
                            progress: nil
                          completion: ^(NSURL * downloadedFileURL, NSError * error) {
        if (error != nil) {
            [[NSFileManager new] removeItemAtURL: downloadedFileURL
                                           error: nil];
            return;
        }

        NSLog(@" Download document to URL:\
              \r\n %@", downloadedFileURL);
    }];
}

@end
