//
//  CKFetchDatabaseChangesOperation+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKFetchDatabaseChangesOperation+MCK.h"

@implementation CKFetchDatabaseChangesOperation (MCK)

- (void)mck_removeAllCompletionBlocks{
    [super mck_removeAllCompletionBlocks];
    self.recordZoneWithIDChangedBlock = nil;
    self.recordZoneWithIDWasDeletedBlock = nil;
    self.fetchDatabaseChangesCompletionBlock = nil;
}

@end
