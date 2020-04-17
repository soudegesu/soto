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

/// Error enum for MediaConvert
public enum MediaConvertErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension MediaConvertErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension MediaConvertErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
