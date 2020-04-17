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

extension StorageGateway {

    ///  Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type. If a specific TapeARN is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.
    public func describeTapeArchivesPaginator(
        _ input: DescribeTapeArchivesInput,
        onPage: @escaping (DescribeTapeArchivesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeTapeArchives, tokenKey: \DescribeTapeArchivesOutput.marker, onPage: onPage)
    }

    ///  Returns a list of virtual tape recovery points that are available for the specified tape gateway. A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.
    public func describeTapeRecoveryPointsPaginator(
        _ input: DescribeTapeRecoveryPointsInput,
        onPage: @escaping (DescribeTapeRecoveryPointsOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeTapeRecoveryPoints, tokenKey: \DescribeTapeRecoveryPointsOutput.marker, onPage: onPage)
    }

    ///  Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a TapeARN is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.
    public func describeTapesPaginator(
        _ input: DescribeTapesInput,
        onPage: @escaping (DescribeTapesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeTapes, tokenKey: \DescribeTapesOutput.marker, onPage: onPage)
    }

    ///  Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information. This operation is only supported in the tape gateway type.
    public func describeVTLDevicesPaginator(
        _ input: DescribeVTLDevicesInput,
        onPage: @escaping (DescribeVTLDevicesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeVTLDevices, tokenKey: \DescribeVTLDevicesOutput.marker, onPage: onPage)
    }

    ///  Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported for file gateways.
    public func listFileSharesPaginator(
        _ input: ListFileSharesInput,
        onPage: @escaping (ListFileSharesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFileShares, tokenKey: \ListFileSharesOutput.nextMarker, onPage: onPage)
    }

    ///  Lists gateways owned by an AWS account in an AWS Region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN). By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response. If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.
    public func listGatewaysPaginator(
        _ input: ListGatewaysInput,
        onPage: @escaping (ListGatewaysOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGateways, tokenKey: \ListGatewaysOutput.marker, onPage: onPage)
    }

    ///  Lists the tags that have been added to the specified resource. This operation is supported in storage gateways of all types.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        onPage: @escaping (ListTagsForResourceOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceOutput.marker, onPage: onPage)
    }

    ///  Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS. This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the Limit parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a Marker element that you can use in your subsequent request to retrieve the next set of tapes. This operation is only supported in the tape gateway type.
    public func listTapesPaginator(
        _ input: ListTapesInput,
        onPage: @escaping (ListTapesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTapes, tokenKey: \ListTapesOutput.marker, onPage: onPage)
    }

    ///  Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the DescribeStorediSCSIVolumes or the DescribeCachediSCSIVolumes API. The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the Limit field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.
    public func listVolumesPaginator(
        _ input: ListVolumesInput,
        onPage: @escaping (ListVolumesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVolumes, tokenKey: \ListVolumesOutput.marker, onPage: onPage)
    }

}

extension StorageGateway.DescribeTapeArchivesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.DescribeTapeArchivesInput {
        return .init(
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )

    }
}

extension StorageGateway.DescribeTapeRecoveryPointsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.DescribeTapeRecoveryPointsInput {
        return .init(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )

    }
}

extension StorageGateway.DescribeTapesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.DescribeTapesInput {
        return .init(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )

    }
}

extension StorageGateway.DescribeVTLDevicesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.DescribeVTLDevicesInput {
        return .init(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token,
            vTLDeviceARNs: self.vTLDeviceARNs
        )

    }
}

extension StorageGateway.ListFileSharesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.ListFileSharesInput {
        return .init(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )

    }
}

extension StorageGateway.ListGatewaysInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.ListGatewaysInput {
        return .init(
            limit: self.limit,
            marker: token
        )

    }
}

extension StorageGateway.ListTagsForResourceInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.ListTagsForResourceInput {
        return .init(
            limit: self.limit,
            marker: token,
            resourceARN: self.resourceARN
        )

    }
}

extension StorageGateway.ListTapesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.ListTapesInput {
        return .init(
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )

    }
}

extension StorageGateway.ListVolumesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> StorageGateway.ListVolumesInput {
        return .init(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )

    }
}


