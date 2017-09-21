//
//  CKOperation+MCK.m
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKOperation+MCK.h"

@implementation CKOperation (MCK)

- (void)mck_removeAllCompletionBlocks{
    self.completionBlock = nil;
}

@end
