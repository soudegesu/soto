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

/// Error enum for OpsWorksCM
public struct OpsWorksCMErrorType: AWSErrorType {
    enum Code: String {
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidStateException = "InvalidStateException"
        case limitExceededException = "LimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
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

    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    public static var invalidStateException: Self { .init(.invalidStateException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var validationException: Self { .init(.validationException) }
}

extension OpsWorksCMErrorType: Equatable {
    public static func == (lhs: OpsWorksCMErrorType, rhs: OpsWorksCMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension OpsWorksCMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
