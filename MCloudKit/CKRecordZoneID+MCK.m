//
//  CKRecordZoneID+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKRecordZoneID+MCK.h"

@implementation CKRecordZoneID (MCK)

- (CKDatabaseScope)mck_databaseScope{
    if(self.mck_isOwnedByCurrentUser){
        return CKDatabaseScopePrivate;
    }
    return CKDatabaseScopeShared;
}

- (BOOL)mck_isOwnedByCurrentUser{
    return [self.ownerName isEqualToString:CKCurrentUserDefaultName];
}

@end
