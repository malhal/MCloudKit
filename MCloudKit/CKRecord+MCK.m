//
//  CKRecord+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKRecord+MCK.h"
#import "CKRecordID+MCK.h"

NSString * const MCKShareRecordKeyRootRecord = @"RootRecord";
NSString * const MCKShareRecordKeyRootRecordType = @"RootRecordType";

@implementation CKRecord (MCK)

- (CKDatabaseScope)mck_databaseScope{
    return self.recordID.mck_databaseScope;
}

- (BOOL)mck_isOwnedByCurrentUser{
    return self.recordID.mck_isOwnedByCurrentUser;
}

@end
