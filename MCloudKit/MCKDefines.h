//
//  MCKDefines.h
//  MCloudKit
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#ifndef MCK_EXTERN
#ifdef __cplusplus
#define MCK_EXTERN   extern "C" __attribute__((visibility ("default")))
#else
#define MCK_EXTERN   extern __attribute__((visibility ("default")))
#endif
#endif

#ifndef CK_HIDDEN
#define CK_HIDDEN   __attribute__((visibility("hidden")))
#endif

#ifndef MCK_EXTERN_HIDDEN
#ifdef __cplusplus
#define MCK_EXTERN_HIDDEN   extern "C" __attribute__((visibility ("hidden")))
#else
#define MCK_EXTERN_HIDDEN   extern __attribute__((visibility ("hidden")))
#endif
#endif

#import <MCloudKit/MCKDefines+Namespace.h>
