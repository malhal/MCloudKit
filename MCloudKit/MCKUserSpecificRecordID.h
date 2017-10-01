//
//  MCKUserSpecificRecordID.m
//  MCloudKit
//
//  Created by Malcolm Hall on 28/02/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import <CloudKit/CloudKit.h>
#import <MCloudKit/MCKDefines.h>

@interface MCKUserSpecificRecordID : NSObject

@property (nonatomic) NSInteger databaseScope;
@property (strong, nonatomic) NSString *recordType;
@property (strong, nonatomic) NSString *shareOwnerName;
@property (strong, nonatomic) NSString *sharedRecordName;
@property (strong, nonatomic) NSString *userSpecificOwnerName;
@property (strong, nonatomic) NSString *zoneName;

+ (BOOL)isUserSpecificRecordID:(CKRecordID *)recordID;
+ (BOOL)isUserSpecificRecordType:(NSString *)recordType;
+ (NSString *)userSpecificRecordTypeFromSharedRecordType:(NSString *)recordType;
- (instancetype)initWithRecordName:(NSString *)recordName;
- (instancetype)initWithRecordType:(NSString *)recordType shareOwnerName:(NSString *)shareOwnerName databaseScope:(CKDatabaseScope)databaseScope zoneName:(NSString *)zoneName userSpecificOwnerName:(NSString *)userSpecificOwnerName sharedRecordName:(NSString *)sharedRecordName;
- (CKRecordID *)recordID;
- (NSString *)recordName;
- (CKRecordID *)sharedRecordID;
- (NSString *)sharedRecordType;

@end

