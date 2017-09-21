//
//  MCKDefines+Namespace.h
//  MCloudKit
//
//  Generated using MHNamespaceGenerator on 21/09/2017
//

#if !defined(__MCLOUDKIT_NAMESPACE_APPLY) && defined(MCLOUDKIT_NAMESPACE) && defined(MCLOUDKIT_NAMESPACE_LOWER)
    #define __MCLOUDKIT_NAMESPACE_REWRITE(ns, s) ns ## _ ## s
    #define __MCLOUDKIT_NAMESPACE_BRIDGE(ns, s) __MCLOUDKIT_NAMESPACE_REWRITE(ns, s)
    #define __MCLOUDKIT_NAMESPACE_APPLY(s) __MCLOUDKIT_NAMESPACE_BRIDGE(MCLOUDKIT_NAMESPACE, s)
	#define __MCLOUDKIT_NAMESPACE_APPLY_LOWER(s) __MCLOUDKIT_NAMESPACE_BRIDGE(MCLOUDKIT_NAMESPACE_LOWER, s)
// Classes
    #define MCKRecordSystemFieldsTransformer __MCLOUDKIT_NAMESPACE_APPLY(MCKRecordSystemFieldsTransformer)
    #define MCKShareSystemFieldsTransformer __MCLOUDKIT_NAMESPACE_APPLY(MCKShareSystemFieldsTransformer)
// Categories
    #define MCK __MCLOUDKIT_NAMESPACE_APPLY(MCK)
    #define mck_databaseScope __MCLOUDKIT_NAMESPACE_APPLY_LOWER(mck_databaseScope)
    #define mck_isOwnedByCurrentUser __MCLOUDKIT_NAMESPACE_APPLY_LOWER(mck_isOwnedByCurrentUser)
    #define mck_removeAllCompletionBlocks __MCLOUDKIT_NAMESPACE_APPLY_LOWER(mck_removeAllCompletionBlocks)
// Externs
    #define MCKShareRecordKeyRootRecord __MCLOUDKIT_NAMESPACE_APPLY(MCKShareRecordKeyRootRecord)
    #define MCKShareRecordKeyRootRecordType __MCLOUDKIT_NAMESPACE_APPLY(MCKShareRecordKeyRootRecordType)
#endif
