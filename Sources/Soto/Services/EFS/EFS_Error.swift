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

/// Error enum for EFS
public struct EFSErrorType: AWSErrorType {
    enum Code: String {
        case accessPointAlreadyExists = "AccessPointAlreadyExists"
        case accessPointLimitExceeded = "AccessPointLimitExceeded"
        case accessPointNotFound = "AccessPointNotFound"
        case badRequest = "BadRequest"
        case dependencyTimeout = "DependencyTimeout"
        case fileSystemAlreadyExists = "FileSystemAlreadyExists"
        case fileSystemInUse = "FileSystemInUse"
        case fileSystemLimitExceeded = "FileSystemLimitExceeded"
        case fileSystemNotFound = "FileSystemNotFound"
        case incorrectFileSystemLifeCycleState = "IncorrectFileSystemLifeCycleState"
        case incorrectMountTargetState = "IncorrectMountTargetState"
        case insufficientThroughputCapacity = "InsufficientThroughputCapacity"
        case internalServerError = "InternalServerError"
        case invalidPolicyException = "InvalidPolicyException"
        case ipAddressInUse = "IpAddressInUse"
        case mountTargetConflict = "MountTargetConflict"
        case mountTargetNotFound = "MountTargetNotFound"
        case networkInterfaceLimitExceeded = "NetworkInterfaceLimitExceeded"
        case noFreeAddressesInSubnet = "NoFreeAddressesInSubnet"
        case policyNotFound = "PolicyNotFound"
        case securityGroupLimitExceeded = "SecurityGroupLimitExceeded"
        case securityGroupNotFound = "SecurityGroupNotFound"
        case subnetNotFound = "SubnetNotFound"
        case throughputLimitExceeded = "ThroughputLimitExceeded"
        case tooManyRequests = "TooManyRequests"
        case unsupportedAvailabilityZone = "UnsupportedAvailabilityZone"
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

    public static var accessPointAlreadyExists: Self { .init(.accessPointAlreadyExists) }
    public static var accessPointLimitExceeded: Self { .init(.accessPointLimitExceeded) }
    public static var accessPointNotFound: Self { .init(.accessPointNotFound) }
    public static var badRequest: Self { .init(.badRequest) }
    public static var dependencyTimeout: Self { .init(.dependencyTimeout) }
    public static var fileSystemAlreadyExists: Self { .init(.fileSystemAlreadyExists) }
    public static var fileSystemInUse: Self { .init(.fileSystemInUse) }
    public static var fileSystemLimitExceeded: Self { .init(.fileSystemLimitExceeded) }
    public static var fileSystemNotFound: Self { .init(.fileSystemNotFound) }
    public static var incorrectFileSystemLifeCycleState: Self { .init(.incorrectFileSystemLifeCycleState) }
    public static var incorrectMountTargetState: Self { .init(.incorrectMountTargetState) }
    public static var insufficientThroughputCapacity: Self { .init(.insufficientThroughputCapacity) }
    public static var internalServerError: Self { .init(.internalServerError) }
    public static var invalidPolicyException: Self { .init(.invalidPolicyException) }
    public static var ipAddressInUse: Self { .init(.ipAddressInUse) }
    public static var mountTargetConflict: Self { .init(.mountTargetConflict) }
    public static var mountTargetNotFound: Self { .init(.mountTargetNotFound) }
    public static var networkInterfaceLimitExceeded: Self { .init(.networkInterfaceLimitExceeded) }
    public static var noFreeAddressesInSubnet: Self { .init(.noFreeAddressesInSubnet) }
    public static var policyNotFound: Self { .init(.policyNotFound) }
    public static var securityGroupLimitExceeded: Self { .init(.securityGroupLimitExceeded) }
    public static var securityGroupNotFound: Self { .init(.securityGroupNotFound) }
    public static var subnetNotFound: Self { .init(.subnetNotFound) }
    public static var throughputLimitExceeded: Self { .init(.throughputLimitExceeded) }
    public static var tooManyRequests: Self { .init(.tooManyRequests) }
    public static var unsupportedAvailabilityZone: Self { .init(.unsupportedAvailabilityZone) }
    public static var validationException: Self { .init(.validationException) }
}

extension EFSErrorType: Equatable {
    public static func == (lhs: EFSErrorType, rhs: EFSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EFSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
