//
//  MCKShareSystemFieldsTransformer.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "MCKShareSystemFieldsTransformer.h"

@implementation MCKShareSystemFieldsTransformer

+ (Class)transformedValueClass{
    return [CKShare class];
}

- (CKShare *)reverseTransformedValue:(NSData *)data{
    CKShare *share;
    if(data){
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        unarchiver.requiresSecureCoding = YES;
        share = [[CKShare alloc] initWithCoder:unarchiver];
    }
    return share;
}

@end
