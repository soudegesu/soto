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

/// Error enum for Cloud9
public struct Cloud9ErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case concurrentAccessException = "ConcurrentAccessException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
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

    public static var badRequestException: Self { .init(.badRequestException) }
    public static var concurrentAccessException: Self { .init(.concurrentAccessException) }
    public static var conflictException: Self { .init(.conflictException) }
    public static var forbiddenException: Self { .init(.forbiddenException) }
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var notFoundException: Self { .init(.notFoundException) }
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension Cloud9ErrorType: Equatable {
    public static func == (lhs: Cloud9ErrorType, rhs: Cloud9ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Cloud9ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
