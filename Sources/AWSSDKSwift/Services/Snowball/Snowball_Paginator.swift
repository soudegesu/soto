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

import NIO

//MARK: Paginators

extension Snowball {

    ///  Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    public func describeAddressesPaginator(
        _ input: DescribeAddressesRequest,
        onPage: @escaping (DescribeAddressesResult,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAddresses, tokenKey: \DescribeAddressesResult.nextToken, onPage: onPage)
    }

    ///  Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        onPage: @escaping (ListJobsResult,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsResult.nextToken, onPage: onPage)
    }

}

extension Snowball.DescribeAddressesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.DescribeAddressesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Snowball.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


