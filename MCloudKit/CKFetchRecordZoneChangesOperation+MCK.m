//
//  CKFetchRecordZoneChangesOperation+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKFetchRecordZoneChangesOperation+MCK.h"

@implementation CKFetchRecordZoneChangesOperation (MCK)

- (void)mck_removeAllCompletionBlocks{
    [super mck_removeAllCompletionBlocks];
    self.recordChangedBlock = nil;
    self.recordWithIDWasDeletedBlock = nil;
    self.fetchRecordZoneChangesCompletionBlock = nil;
    self.recordZoneFetchCompletionBlock = nil;
    self.recordZoneChangeTokensUpdatedBlock = nil;
}

@end
