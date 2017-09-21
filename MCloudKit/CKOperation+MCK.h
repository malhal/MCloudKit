//
//  CKOperation+MCK.h
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import <MCloudKit/MCKDefines.h>

@interface CKOperation (MCK)

- (void)mck_removeAllCompletionBlocks;

@end

