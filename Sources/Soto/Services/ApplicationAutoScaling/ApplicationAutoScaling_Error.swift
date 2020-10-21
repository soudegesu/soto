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

/// Error enum for ApplicationAutoScaling
public struct ApplicationAutoScalingErrorType: AWSErrorType {
    enum Code: String {
        case concurrentUpdateException = "ConcurrentUpdateException"
        case failedResourceAccessException = "FailedResourceAccessException"
        case internalServiceException = "InternalServiceException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case limitExceededException = "LimitExceededException"
        case objectNotFoundException = "ObjectNotFoundException"
        case validationException = "ValidationException"
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

    public static var concurrentUpdateException: Self { .init(.concurrentUpdateException) }
    public static var failedResourceAccessException: Self { .init(.failedResourceAccessException) }
    public static var internalServiceException: Self { .init(.internalServiceException) }
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var objectNotFoundException: Self { .init(.objectNotFoundException) }
    public static var validationException: Self { .init(.validationException) }
}

extension ApplicationAutoScalingErrorType: Equatable {
    public static func == (lhs: ApplicationAutoScalingErrorType, rhs: ApplicationAutoScalingErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ApplicationAutoScalingErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
