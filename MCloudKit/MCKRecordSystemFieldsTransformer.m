//
//  MCKRecordSystemFieldsTransformer.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "MCKRecordSystemFieldsTransformer.h"

@implementation MCKRecordSystemFieldsTransformer

+ (Class)transformedValueClass{
    return [CKRecord class];
}

- (CKRecord *)reverseTransformedValue:(NSData *)data{
    CKRecord *record;
    if(data){
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        unarchiver.requiresSecureCoding = YES;
        record = [[CKRecord alloc] initWithCoder:unarchiver];
    }
    return record;
}

- (NSData *)transformedValue:(CKRecord *)record{
    NSMutableData *data;
    if(record){
        data = [NSMutableData data];
        NSKeyedArchiver *keyedArchiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
        [record encodeSystemFieldsWithCoder:keyedArchiver];
        [keyedArchiver finishEncoding];
    }
    return data;
}

@end
