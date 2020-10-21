//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for CloudFront
public struct CloudFrontErrorType: AWSErrorType {
    enum Code: String {
        case accessDenied = "AccessDenied"
        case batchTooLarge = "BatchTooLarge"
        case cNAMEAlreadyExists = "CNAMEAlreadyExists"
        case cachePolicyAlreadyExists = "CachePolicyAlreadyExists"
        case cachePolicyInUse = "CachePolicyInUse"
        case cannotChangeImmutablePublicKeyFields = "CannotChangeImmutablePublicKeyFields"
        case cloudFrontOriginAccessIdentityAlreadyExists = "CloudFrontOriginAccessIdentityAlreadyExists"
        case cloudFrontOriginAccessIdentityInUse = "CloudFrontOriginAccessIdentityInUse"
        case distributionAlreadyExists = "DistributionAlreadyExists"
        case distributionNotDisabled = "DistributionNotDisabled"
        case fieldLevelEncryptionConfigAlreadyExists = "FieldLevelEncryptionConfigAlreadyExists"
        case fieldLevelEncryptionConfigInUse = "FieldLevelEncryptionConfigInUse"
        case fieldLevelEncryptionProfileAlreadyExists = "FieldLevelEncryptionProfileAlreadyExists"
        case fieldLevelEncryptionProfileInUse = "FieldLevelEncryptionProfileInUse"
        case fieldLevelEncryptionProfileSizeExceeded = "FieldLevelEncryptionProfileSizeExceeded"
        case illegalDelete = "IllegalDelete"
        case illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        case illegalUpdate = "IllegalUpdate"
        case inconsistentQuantities = "InconsistentQuantities"
        case invalidArgument = "InvalidArgument"
        case invalidDefaultRootObject = "InvalidDefaultRootObject"
        case invalidErrorCode = "InvalidErrorCode"
        case invalidForwardCookies = "InvalidForwardCookies"
        case invalidGeoRestrictionParameter = "InvalidGeoRestrictionParameter"
        case invalidHeadersForS3Origin = "InvalidHeadersForS3Origin"
        case invalidIfMatchVersion = "InvalidIfMatchVersion"
        case invalidLambdaFunctionAssociation = "InvalidLambdaFunctionAssociation"
        case invalidLocationCode = "InvalidLocationCode"
        case invalidMinimumProtocolVersion = "InvalidMinimumProtocolVersion"
        case invalidOrigin = "InvalidOrigin"
        case invalidOriginAccessIdentity = "InvalidOriginAccessIdentity"
        case invalidOriginKeepaliveTimeout = "InvalidOriginKeepaliveTimeout"
        case invalidOriginReadTimeout = "InvalidOriginReadTimeout"
        case invalidProtocolSettings = "InvalidProtocolSettings"
        case invalidQueryStringParameters = "InvalidQueryStringParameters"
        case invalidRelativePath = "InvalidRelativePath"
        case invalidRequiredProtocol = "InvalidRequiredProtocol"
        case invalidResponseCode = "InvalidResponseCode"
        case invalidTTLOrder = "InvalidTTLOrder"
        case invalidTagging = "InvalidTagging"
        case invalidViewerCertificate = "InvalidViewerCertificate"
        case invalidWebACLId = "InvalidWebACLId"
        case missingBody = "MissingBody"
        case noSuchCachePolicy = "NoSuchCachePolicy"
        case noSuchCloudFrontOriginAccessIdentity = "NoSuchCloudFrontOriginAccessIdentity"
        case noSuchDistribution = "NoSuchDistribution"
        case noSuchFieldLevelEncryptionConfig = "NoSuchFieldLevelEncryptionConfig"
        case noSuchFieldLevelEncryptionProfile = "NoSuchFieldLevelEncryptionProfile"
        case noSuchInvalidation = "NoSuchInvalidation"
        case noSuchOrigin = "NoSuchOrigin"
        case noSuchOriginRequestPolicy = "NoSuchOriginRequestPolicy"
        case noSuchPublicKey = "NoSuchPublicKey"
        case noSuchRealtimeLogConfig = "NoSuchRealtimeLogConfig"
        case noSuchResource = "NoSuchResource"
        case noSuchStreamingDistribution = "NoSuchStreamingDistribution"
        case originRequestPolicyAlreadyExists = "OriginRequestPolicyAlreadyExists"
        case originRequestPolicyInUse = "OriginRequestPolicyInUse"
        case preconditionFailed = "PreconditionFailed"
        case publicKeyAlreadyExists = "PublicKeyAlreadyExists"
        case publicKeyInUse = "PublicKeyInUse"
        case queryArgProfileEmpty = "QueryArgProfileEmpty"
        case realtimeLogConfigAlreadyExists = "RealtimeLogConfigAlreadyExists"
        case realtimeLogConfigInUse = "RealtimeLogConfigInUse"
        case streamingDistributionAlreadyExists = "StreamingDistributionAlreadyExists"
        case streamingDistributionNotDisabled = "StreamingDistributionNotDisabled"
        case tooManyCacheBehaviors = "TooManyCacheBehaviors"
        case tooManyCachePolicies = "TooManyCachePolicies"
        case tooManyCertificates = "TooManyCertificates"
        case tooManyCloudFrontOriginAccessIdentities = "TooManyCloudFrontOriginAccessIdentities"
        case tooManyCookieNamesInWhiteList = "TooManyCookieNamesInWhiteList"
        case tooManyCookiesInCachePolicy = "TooManyCookiesInCachePolicy"
        case tooManyCookiesInOriginRequestPolicy = "TooManyCookiesInOriginRequestPolicy"
        case tooManyDistributionCNAMEs = "TooManyDistributionCNAMEs"
        case tooManyDistributions = "TooManyDistributions"
        case tooManyDistributionsAssociatedToCachePolicy = "TooManyDistributionsAssociatedToCachePolicy"
        case tooManyDistributionsAssociatedToFieldLevelEncryptionConfig = "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        case tooManyDistributionsAssociatedToOriginRequestPolicy = "TooManyDistributionsAssociatedToOriginRequestPolicy"
        case tooManyDistributionsWithLambdaAssociations = "TooManyDistributionsWithLambdaAssociations"
        case tooManyDistributionsWithSingleFunctionARN = "TooManyDistributionsWithSingleFunctionARN"
        case tooManyFieldLevelEncryptionConfigs = "TooManyFieldLevelEncryptionConfigs"
        case tooManyFieldLevelEncryptionContentTypeProfiles = "TooManyFieldLevelEncryptionContentTypeProfiles"
        case tooManyFieldLevelEncryptionEncryptionEntities = "TooManyFieldLevelEncryptionEncryptionEntities"
        case tooManyFieldLevelEncryptionFieldPatterns = "TooManyFieldLevelEncryptionFieldPatterns"
        case tooManyFieldLevelEncryptionProfiles = "TooManyFieldLevelEncryptionProfiles"
        case tooManyFieldLevelEncryptionQueryArgProfiles = "TooManyFieldLevelEncryptionQueryArgProfiles"
        case tooManyHeadersInCachePolicy = "TooManyHeadersInCachePolicy"
        case tooManyHeadersInForwardedValues = "TooManyHeadersInForwardedValues"
        case tooManyHeadersInOriginRequestPolicy = "TooManyHeadersInOriginRequestPolicy"
        case tooManyInvalidationsInProgress = "TooManyInvalidationsInProgress"
        case tooManyLambdaFunctionAssociations = "TooManyLambdaFunctionAssociations"
        case tooManyOriginCustomHeaders = "TooManyOriginCustomHeaders"
        case tooManyOriginGroupsPerDistribution = "TooManyOriginGroupsPerDistribution"
        case tooManyOriginRequestPolicies = "TooManyOriginRequestPolicies"
        case tooManyOrigins = "TooManyOrigins"
        case tooManyPublicKeys = "TooManyPublicKeys"
        case tooManyQueryStringParameters = "TooManyQueryStringParameters"
        case tooManyQueryStringsInCachePolicy = "TooManyQueryStringsInCachePolicy"
        case tooManyQueryStringsInOriginRequestPolicy = "TooManyQueryStringsInOriginRequestPolicy"
        case tooManyRealtimeLogConfigs = "TooManyRealtimeLogConfigs"
        case tooManyStreamingDistributionCNAMEs = "TooManyStreamingDistributionCNAMEs"
        case tooManyStreamingDistributions = "TooManyStreamingDistributions"
        case tooManyTrustedSigners = "TooManyTrustedSigners"
        case trustedSignerDoesNotExist = "TrustedSignerDoesNotExist"
    }

    private var error: Code
    public var message: String?

    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.message = message
    }

    internal init(_ error: Code) {
        self.error = error
        self.message = nil
    }

    public static var accessDenied: Self { .init(.accessDenied) }
    public static var batchTooLarge: Self { .init(.batchTooLarge) }
    public static var cNAMEAlreadyExists: Self { .init(.cNAMEAlreadyExists) }
    public static var cachePolicyAlreadyExists: Self { .init(.cachePolicyAlreadyExists) }
    public static var cachePolicyInUse: Self { .init(.cachePolicyInUse) }
    public static var cannotChangeImmutablePublicKeyFields: Self { .init(.cannotChangeImmutablePublicKeyFields) }
    public static var cloudFrontOriginAccessIdentityAlreadyExists: Self { .init(.cloudFrontOriginAccessIdentityAlreadyExists) }
    public static var cloudFrontOriginAccessIdentityInUse: Self { .init(.cloudFrontOriginAccessIdentityInUse) }
    public static var distributionAlreadyExists: Self { .init(.distributionAlreadyExists) }
    public static var distributionNotDisabled: Self { .init(.distributionNotDisabled) }
    public static var fieldLevelEncryptionConfigAlreadyExists: Self { .init(.fieldLevelEncryptionConfigAlreadyExists) }
    public static var fieldLevelEncryptionConfigInUse: Self { .init(.fieldLevelEncryptionConfigInUse) }
    public static var fieldLevelEncryptionProfileAlreadyExists: Self { .init(.fieldLevelEncryptionProfileAlreadyExists) }
    public static var fieldLevelEncryptionProfileInUse: Self { .init(.fieldLevelEncryptionProfileInUse) }
    public static var fieldLevelEncryptionProfileSizeExceeded: Self { .init(.fieldLevelEncryptionProfileSizeExceeded) }
    public static var illegalDelete: Self { .init(.illegalDelete) }
    public static var illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior: Self { .init(.illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior) }
    public static var illegalUpdate: Self { .init(.illegalUpdate) }
    public static var inconsistentQuantities: Self { .init(.inconsistentQuantities) }
    public static var invalidArgument: Self { .init(.invalidArgument) }
    public static var invalidDefaultRootObject: Self { .init(.invalidDefaultRootObject) }
    public static var invalidErrorCode: Self { .init(.invalidErrorCode) }
    public static var invalidForwardCookies: Self { .init(.invalidForwardCookies) }
    public static var invalidGeoRestrictionParameter: Self { .init(.invalidGeoRestrictionParameter) }
    public static var invalidHeadersForS3Origin: Self { .init(.invalidHeadersForS3Origin) }
    public static var invalidIfMatchVersion: Self { .init(.invalidIfMatchVersion) }
    public static var invalidLambdaFunctionAssociation: Self { .init(.invalidLambdaFunctionAssociation) }
    public static var invalidLocationCode: Self { .init(.invalidLocationCode) }
    public static var invalidMinimumProtocolVersion: Self { .init(.invalidMinimumProtocolVersion) }
    public static var invalidOrigin: Self { .init(.invalidOrigin) }
    public static var invalidOriginAccessIdentity: Self { .init(.invalidOriginAccessIdentity) }
    public static var invalidOriginKeepaliveTimeout: Self { .init(.invalidOriginKeepaliveTimeout) }
    public static var invalidOriginReadTimeout: Self { .init(.invalidOriginReadTimeout) }
    public static var invalidProtocolSettings: Self { .init(.invalidProtocolSettings) }
    public static var invalidQueryStringParameters: Self { .init(.invalidQueryStringParameters) }
    public static var invalidRelativePath: Self { .init(.invalidRelativePath) }
    public static var invalidRequiredProtocol: Self { .init(.invalidRequiredProtocol) }
    public static var invalidResponseCode: Self { .init(.invalidResponseCode) }
    public static var invalidTTLOrder: Self { .init(.invalidTTLOrder) }
    public static var invalidTagging: Self { .init(.invalidTagging) }
    public static var invalidViewerCertificate: Self { .init(.invalidViewerCertificate) }
    public static var invalidWebACLId: Self { .init(.invalidWebACLId) }
    public static var missingBody: Self { .init(.missingBody) }
    public static var noSuchCachePolicy: Self { .init(.noSuchCachePolicy) }
    public static var noSuchCloudFrontOriginAccessIdentity: Self { .init(.noSuchCloudFrontOriginAccessIdentity) }
    public static var noSuchDistribution: Self { .init(.noSuchDistribution) }
    public static var noSuchFieldLevelEncryptionConfig: Self { .init(.noSuchFieldLevelEncryptionConfig) }
    public static var noSuchFieldLevelEncryptionProfile: Self { .init(.noSuchFieldLevelEncryptionProfile) }
    public static var noSuchInvalidation: Self { .init(.noSuchInvalidation) }
    public static var noSuchOrigin: Self { .init(.noSuchOrigin) }
    public static var noSuchOriginRequestPolicy: Self { .init(.noSuchOriginRequestPolicy) }
    public static var noSuchPublicKey: Self { .init(.noSuchPublicKey) }
    public static var noSuchRealtimeLogConfig: Self { .init(.noSuchRealtimeLogConfig) }
    public static var noSuchResource: Self { .init(.noSuchResource) }
    public static var noSuchStreamingDistribution: Self { .init(.noSuchStreamingDistribution) }
    public static var originRequestPolicyAlreadyExists: Self { .init(.originRequestPolicyAlreadyExists) }
    public static var originRequestPolicyInUse: Self { .init(.originRequestPolicyInUse) }
    public static var preconditionFailed: Self { .init(.preconditionFailed) }
    public static var publicKeyAlreadyExists: Self { .init(.publicKeyAlreadyExists) }
    public static var publicKeyInUse: Self { .init(.publicKeyInUse) }
    public static var queryArgProfileEmpty: Self { .init(.queryArgProfileEmpty) }
    public static var realtimeLogConfigAlreadyExists: Self { .init(.realtimeLogConfigAlreadyExists) }
    public static var realtimeLogConfigInUse: Self { .init(.realtimeLogConfigInUse) }
    public static var streamingDistributionAlreadyExists: Self { .init(.streamingDistributionAlreadyExists) }
    public static var streamingDistributionNotDisabled: Self { .init(.streamingDistributionNotDisabled) }
    public static var tooManyCacheBehaviors: Self { .init(.tooManyCacheBehaviors) }
    public static var tooManyCachePolicies: Self { .init(.tooManyCachePolicies) }
    public static var tooManyCertificates: Self { .init(.tooManyCertificates) }
    public static var tooManyCloudFrontOriginAccessIdentities: Self { .init(.tooManyCloudFrontOriginAccessIdentities) }
    public static var tooManyCookieNamesInWhiteList: Self { .init(.tooManyCookieNamesInWhiteList) }
    public static var tooManyCookiesInCachePolicy: Self { .init(.tooManyCookiesInCachePolicy) }
    public static var tooManyCookiesInOriginRequestPolicy: Self { .init(.tooManyCookiesInOriginRequestPolicy) }
    public static var tooManyDistributionCNAMEs: Self { .init(.tooManyDistributionCNAMEs) }
    public static var tooManyDistributions: Self { .init(.tooManyDistributions) }
    public static var tooManyDistributionsAssociatedToCachePolicy: Self { .init(.tooManyDistributionsAssociatedToCachePolicy) }
    public static var tooManyDistributionsAssociatedToFieldLevelEncryptionConfig: Self { .init(.tooManyDistributionsAssociatedToFieldLevelEncryptionConfig) }
    public static var tooManyDistributionsAssociatedToOriginRequestPolicy: Self { .init(.tooManyDistributionsAssociatedToOriginRequestPolicy) }
    public static var tooManyDistributionsWithLambdaAssociations: Self { .init(.tooManyDistributionsWithLambdaAssociations) }
    public static var tooManyDistributionsWithSingleFunctionARN: Self { .init(.tooManyDistributionsWithSingleFunctionARN) }
    public static var tooManyFieldLevelEncryptionConfigs: Self { .init(.tooManyFieldLevelEncryptionConfigs) }
    public static var tooManyFieldLevelEncryptionContentTypeProfiles: Self { .init(.tooManyFieldLevelEncryptionContentTypeProfiles) }
    public static var tooManyFieldLevelEncryptionEncryptionEntities: Self { .init(.tooManyFieldLevelEncryptionEncryptionEntities) }
    public static var tooManyFieldLevelEncryptionFieldPatterns: Self { .init(.tooManyFieldLevelEncryptionFieldPatterns) }
    public static var tooManyFieldLevelEncryptionProfiles: Self { .init(.tooManyFieldLevelEncryptionProfiles) }
    public static var tooManyFieldLevelEncryptionQueryArgProfiles: Self { .init(.tooManyFieldLevelEncryptionQueryArgProfiles) }
    public static var tooManyHeadersInCachePolicy: Self { .init(.tooManyHeadersInCachePolicy) }
    public static var tooManyHeadersInForwardedValues: Self { .init(.tooManyHeadersInForwardedValues) }
    public static var tooManyHeadersInOriginRequestPolicy: Self { .init(.tooManyHeadersInOriginRequestPolicy) }
    public static var tooManyInvalidationsInProgress: Self { .init(.tooManyInvalidationsInProgress) }
    public static var tooManyLambdaFunctionAssociations: Self { .init(.tooManyLambdaFunctionAssociations) }
    public static var tooManyOriginCustomHeaders: Self { .init(.tooManyOriginCustomHeaders) }
    public static var tooManyOriginGroupsPerDistribution: Self { .init(.tooManyOriginGroupsPerDistribution) }
    public static var tooManyOriginRequestPolicies: Self { .init(.tooManyOriginRequestPolicies) }
    public static var tooManyOrigins: Self { .init(.tooManyOrigins) }
    public static var tooManyPublicKeys: Self { .init(.tooManyPublicKeys) }
    public static var tooManyQueryStringParameters: Self { .init(.tooManyQueryStringParameters) }
    public static var tooManyQueryStringsInCachePolicy: Self { .init(.tooManyQueryStringsInCachePolicy) }
    public static var tooManyQueryStringsInOriginRequestPolicy: Self { .init(.tooManyQueryStringsInOriginRequestPolicy) }
    public static var tooManyRealtimeLogConfigs: Self { .init(.tooManyRealtimeLogConfigs) }
    public static var tooManyStreamingDistributionCNAMEs: Self { .init(.tooManyStreamingDistributionCNAMEs) }
    public static var tooManyStreamingDistributions: Self { .init(.tooManyStreamingDistributions) }
    public static var tooManyTrustedSigners: Self { .init(.tooManyTrustedSigners) }
    public static var trustedSignerDoesNotExist: Self { .init(.trustedSignerDoesNotExist) }
}

extension CloudFrontErrorType: Equatable {
    public static func == (lhs: CloudFrontErrorType, rhs: CloudFrontErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudFrontErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
