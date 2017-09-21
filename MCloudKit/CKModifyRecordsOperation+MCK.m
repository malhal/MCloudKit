//
//  CKModifyRecordsOperation+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKModifyRecordsOperation+MCK.h"

@implementation CKModifyRecordsOperation (MCK)

- (void)mck_removeAllCompletionBlocks{
    [super mck_removeAllCompletionBlocks];
    self.perRecordProgressBlock = nil;
    self.perRecordProgressBlock = nil;
    self.modifyRecordsCompletionBlock = nil;
}

@end
