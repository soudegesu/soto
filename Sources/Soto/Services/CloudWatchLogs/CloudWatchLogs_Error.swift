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

/// Error enum for CloudWatchLogs
public struct CloudWatchLogsErrorType: AWSErrorType {
    enum Code: String {
        case dataAlreadyAcceptedException = "DataAlreadyAcceptedException"
        case invalidOperationException = "InvalidOperationException"
        case invalidParameterException = "InvalidParameterException"
        case invalidSequenceTokenException = "InvalidSequenceTokenException"
        case limitExceededException = "LimitExceededException"
        case malformedQueryException = "MalformedQueryException"
        case operationAbortedException = "OperationAbortedException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case unrecognizedClientException = "UnrecognizedClientException"
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

    public static var dataAlreadyAcceptedException: Self { .init(.dataAlreadyAcceptedException) }
    public static var invalidOperationException: Self { .init(.invalidOperationException) }
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    public static var invalidSequenceTokenException: Self { .init(.invalidSequenceTokenException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var malformedQueryException: Self { .init(.malformedQueryException) }
    public static var operationAbortedException: Self { .init(.operationAbortedException) }
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    public static var unrecognizedClientException: Self { .init(.unrecognizedClientException) }
}

extension CloudWatchLogsErrorType: Equatable {
    public static func == (lhs: CloudWatchLogsErrorType, rhs: CloudWatchLogsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudWatchLogsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
