//
//  CKRecordID+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKRecordID+MCK.h"
#import "CKRecordZoneID+MCK.h"

@implementation CKRecordID (MCK)

- (CKDatabaseScope)mck_databaseScope{
    return self.zoneID.mck_databaseScope;
}

- (BOOL)mck_isOwnedByCurrentUser{
    return self.zoneID.mck_isOwnedByCurrentUser;
}

@end
