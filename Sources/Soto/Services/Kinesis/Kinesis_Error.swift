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

/// Error enum for Kinesis
public struct KinesisErrorType: AWSErrorType {
    enum Code: String {
        case expiredIteratorException = "ExpiredIteratorException"
        case expiredNextTokenException = "ExpiredNextTokenException"
        case invalidArgumentException = "InvalidArgumentException"
        case kMSAccessDeniedException = "KMSAccessDeniedException"
        case kMSDisabledException = "KMSDisabledException"
        case kMSInvalidStateException = "KMSInvalidStateException"
        case kMSNotFoundException = "KMSNotFoundException"
        case kMSOptInRequired = "KMSOptInRequired"
        case kMSThrottlingException = "KMSThrottlingException"
        case limitExceededException = "LimitExceededException"
        case provisionedThroughputExceededException = "ProvisionedThroughputExceededException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
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

    public static var expiredIteratorException: Self { .init(.expiredIteratorException) }
    public static var expiredNextTokenException: Self { .init(.expiredNextTokenException) }
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    public static var kMSAccessDeniedException: Self { .init(.kMSAccessDeniedException) }
    public static var kMSDisabledException: Self { .init(.kMSDisabledException) }
    public static var kMSInvalidStateException: Self { .init(.kMSInvalidStateException) }
    public static var kMSNotFoundException: Self { .init(.kMSNotFoundException) }
    public static var kMSOptInRequired: Self { .init(.kMSOptInRequired) }
    public static var kMSThrottlingException: Self { .init(.kMSThrottlingException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var provisionedThroughputExceededException: Self { .init(.provisionedThroughputExceededException) }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension KinesisErrorType: Equatable {
    public static func == (lhs: KinesisErrorType, rhs: KinesisErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KinesisErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
