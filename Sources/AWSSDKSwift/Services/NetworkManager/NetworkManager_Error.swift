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

/// Error enum for NetworkManager
public enum NetworkManagerErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case conflictException(message: String?)
    case internalServerException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceQuotaExceededException(message: String?)
    case throttlingException(message: String?)
    case validationException(message: String?)
}

extension NetworkManagerErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceQuotaExceededException":
            self = .serviceQuotaExceededException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension NetworkManagerErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceQuotaExceededException(let message):
            return "ServiceQuotaExceededException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
