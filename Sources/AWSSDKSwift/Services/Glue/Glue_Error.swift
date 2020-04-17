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

/// Error enum for Glue
public enum GlueErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case alreadyExistsException(message: String?)
    case concurrentModificationException(message: String?)
    case concurrentRunsExceededException(message: String?)
    case conditionCheckFailureException(message: String?)
    case crawlerNotRunningException(message: String?)
    case crawlerRunningException(message: String?)
    case crawlerStoppingException(message: String?)
    case entityNotFoundException(message: String?)
    case glueEncryptionException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case internalServiceException(message: String?)
    case invalidInputException(message: String?)
    case mLTransformNotReadyException(message: String?)
    case noScheduleException(message: String?)
    case operationTimeoutException(message: String?)
    case resourceNumberLimitExceededException(message: String?)
    case schedulerNotRunningException(message: String?)
    case schedulerRunningException(message: String?)
    case schedulerTransitioningException(message: String?)
    case validationException(message: String?)
    case versionMismatchException(message: String?)
}

extension GlueErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "ConcurrentRunsExceededException":
            self = .concurrentRunsExceededException(message: message)
        case "ConditionCheckFailureException":
            self = .conditionCheckFailureException(message: message)
        case "CrawlerNotRunningException":
            self = .crawlerNotRunningException(message: message)
        case "CrawlerRunningException":
            self = .crawlerRunningException(message: message)
        case "CrawlerStoppingException":
            self = .crawlerStoppingException(message: message)
        case "EntityNotFoundException":
            self = .entityNotFoundException(message: message)
        case "GlueEncryptionException":
            self = .glueEncryptionException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "MLTransformNotReadyException":
            self = .mLTransformNotReadyException(message: message)
        case "NoScheduleException":
            self = .noScheduleException(message: message)
        case "OperationTimeoutException":
            self = .operationTimeoutException(message: message)
        case "ResourceNumberLimitExceededException":
            self = .resourceNumberLimitExceededException(message: message)
        case "SchedulerNotRunningException":
            self = .schedulerNotRunningException(message: message)
        case "SchedulerRunningException":
            self = .schedulerRunningException(message: message)
        case "SchedulerTransitioningException":
            self = .schedulerTransitioningException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        case "VersionMismatchException":
            self = .versionMismatchException(message: message)
        default:
            return nil
        }
    }
}

extension GlueErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .alreadyExistsException(let message):
            return "AlreadyExistsException: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .concurrentRunsExceededException(let message):
            return "ConcurrentRunsExceededException: \(message ?? "")"
        case .conditionCheckFailureException(let message):
            return "ConditionCheckFailureException: \(message ?? "")"
        case .crawlerNotRunningException(let message):
            return "CrawlerNotRunningException: \(message ?? "")"
        case .crawlerRunningException(let message):
            return "CrawlerRunningException: \(message ?? "")"
        case .crawlerStoppingException(let message):
            return "CrawlerStoppingException: \(message ?? "")"
        case .entityNotFoundException(let message):
            return "EntityNotFoundException: \(message ?? "")"
        case .glueEncryptionException(let message):
            return "GlueEncryptionException: \(message ?? "")"
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .mLTransformNotReadyException(let message):
            return "MLTransformNotReadyException: \(message ?? "")"
        case .noScheduleException(let message):
            return "NoScheduleException: \(message ?? "")"
        case .operationTimeoutException(let message):
            return "OperationTimeoutException: \(message ?? "")"
        case .resourceNumberLimitExceededException(let message):
            return "ResourceNumberLimitExceededException: \(message ?? "")"
        case .schedulerNotRunningException(let message):
            return "SchedulerNotRunningException: \(message ?? "")"
        case .schedulerRunningException(let message):
            return "SchedulerRunningException: \(message ?? "")"
        case .schedulerTransitioningException(let message):
            return "SchedulerTransitioningException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        case .versionMismatchException(let message):
            return "VersionMismatchException: \(message ?? "")"
        }
    }
}
