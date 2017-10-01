//
//  MCKUserSpecificRecordID.m
//  MCloudKit
//
//  Created by Malcolm Hall on 28/02/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "MCKUserSpecificRecordID.h"
#import "MCKUtilities.h"

@implementation MCKUserSpecificRecordID

- (instancetype)initWithRecordType:(NSString *)recordType shareOwnerName:(NSString *)shareOwnerName databaseScope:(CKDatabaseScope)databaseScope zoneName:(NSString *)zoneName userSpecificOwnerName:(NSString *)userSpecificOwnerName sharedRecordName:(NSString *)sharedRecordName{
    self = [super init];
    if (self) {
        self.recordType = recordType;
        self.shareOwnerName = shareOwnerName;
        self.databaseScope = databaseScope;
        self.zoneName = zoneName;
        self.userSpecificOwnerName = userSpecificOwnerName;
        self.sharedRecordName = sharedRecordName;
    }
    return self;
}

- (instancetype)initWithRecordName:(NSString *)recordName{
    self = [super init];
    if (self) {
        NSArray *parts = [recordName componentsSeparatedByString:@"::"];
        self.recordType = parts[0];
        NSString *bit = parts[1];
        NSArray *parts2 = [bit componentsSeparatedByString:@"/"];
        self.userSpecificOwnerName = parts2[0];
        NSString *scopeString = parts2[1];
        self.databaseScope = MCKDatabaseScopeFromString(scopeString);
        self.zoneName = parts[2];
        self.shareOwnerName = parts[3];
        self.sharedRecordName = parts[4];
    }
    return self;
}

+ (BOOL)isUserSpecificRecordID:(CKRecordID *)recordID{
    return [recordID.recordName componentsSeparatedByString:@"::"].count > 4;
}

+ (BOOL)isUserSpecificRecordType:(NSString *)recordType{
    return [recordType hasSuffix:@"_UserSpecific"];
}

+ (NSString *)userSpecificRecordTypeFromSharedRecordType:(NSString *)recordType{
    return [NSString stringWithFormat:@"%@%@", recordType, @"_UserSpecific"];
}

- (CKRecordID *)recordID{
    return [CKRecordID.alloc initWithRecordName:self.recordName zoneID:[CKRecordZoneID.alloc initWithZoneName:self.zoneName ownerName:CKCurrentUserDefaultName]];
}

- (NSString *)recordName{
    return [NSString stringWithFormat:@"%@::%@/%@::%@::%@::%@", self.recordType, self.userSpecificOwnerName, MCKDatabaseScopeString(self.databaseScope), self.zoneName, self.shareOwnerName, self.sharedRecordName];
}

- (CKRecordID *)sharedRecordID{
    if(!self.sharedRecordName || !self.zoneName || !self.shareOwnerName){
        NSLog(@"Cannot create shared record ID from user specific ID: %@", self.recordID);
        return nil;
    }
    CKRecordZoneID *zoneID = [[CKRecordZoneID alloc] initWithZoneName:self.zoneName ownerName:self.shareOwnerName];
    return [CKRecordID.alloc initWithRecordName:self.sharedRecordName zoneID:zoneID];
}

- (NSString *)sharedRecordType{
    NSInteger i = self.recordType.length - @"_UserSpecific".length;
    if(self.recordType.length < i){
        return nil;
    }
    return [self.recordType substringToIndex:i];
}

@end
