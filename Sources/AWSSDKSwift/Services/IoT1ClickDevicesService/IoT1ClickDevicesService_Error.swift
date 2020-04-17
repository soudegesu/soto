//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IoT1ClickDevicesService
public enum IoT1ClickDevicesServiceErrorType: AWSErrorType {
    case forbiddenException(message: String?)
    case internalFailureException(message: String?)
    case invalidRequestException(message: String?)
    case preconditionFailedException(message: String?)
    case rangeNotSatisfiableException(message: String?)
    case resourceConflictException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension IoT1ClickDevicesServiceErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "PreconditionFailedException":
            self = .preconditionFailedException(message: message)
        case "RangeNotSatisfiableException":
            self = .rangeNotSatisfiableException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension IoT1ClickDevicesServiceErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .preconditionFailedException(let message):
            return "PreconditionFailedException: \(message ?? "")"
        case .rangeNotSatisfiableException(let message):
            return "RangeNotSatisfiableException: \(message ?? "")"
        case .resourceConflictException(let message):
            return "ResourceConflictException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}
