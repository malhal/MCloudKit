//
//  CKRecord+MCK.h
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import <CloudKit/CloudKit.h>
#import <MCloudKit/MCKDefines.h>
#import <MCloudKit/MCKHasDatabaseScope.h>

MCK_EXTERN NSString * const MCKShareRecordKeyRootRecord;
MCK_EXTERN NSString * const MCKShareRecordKeyRootRecordType;

@interface CKRecord (MCK) <MCKHasDatabaseScope>

@end

