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

/// Error enum for MediaConnect
public struct MediaConnectErrorType: AWSErrorType {
    enum Code: String {
        case addFlowOutputs420Exception = "AddFlowOutputs420Exception"
        case badRequestException = "BadRequestException"
        case createFlow420Exception = "CreateFlow420Exception"
        case forbiddenException = "ForbiddenException"
        case grantFlowEntitlements420Exception = "GrantFlowEntitlements420Exception"
        case internalServerErrorException = "InternalServerErrorException"
        case notFoundException = "NotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
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

    public static var addFlowOutputs420Exception: Self { .init(.addFlowOutputs420Exception) }
    public static var badRequestException: Self { .init(.badRequestException) }
    public static var createFlow420Exception: Self { .init(.createFlow420Exception) }
    public static var forbiddenException: Self { .init(.forbiddenException) }
    public static var grantFlowEntitlements420Exception: Self { .init(.grantFlowEntitlements420Exception) }
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    public static var notFoundException: Self { .init(.notFoundException) }
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension MediaConnectErrorType: Equatable {
    public static func == (lhs: MediaConnectErrorType, rhs: MediaConnectErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MediaConnectErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
