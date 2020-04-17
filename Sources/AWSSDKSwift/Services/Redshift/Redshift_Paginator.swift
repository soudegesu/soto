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

extension Redshift {

    ///  Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all parameter groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.
    public func describeClusterParameterGroupsPaginator(
        _ input: DescribeClusterParameterGroupsMessage,
        onPage: @escaping (ClusterParameterGroupsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusterParameterGroups, tokenKey: \ClusterParameterGroupsMessage.marker, onPage: onPage)
    }

    ///  Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on. You can specify source filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from ModifyClusterParameterGroup, you can specify source equal to user.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.
    public func describeClusterParametersPaginator(
        _ input: DescribeClusterParametersMessage,
        onPage: @escaping (ClusterParameterGroupDetails,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusterParameters, tokenKey: \ClusterParameterGroupDetails.marker, onPage: onPage)
    }

    ///  Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.  For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all security groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.
    public func describeClusterSecurityGroupsPaginator(
        _ input: DescribeClusterSecurityGroupsMessage,
        onPage: @escaping (ClusterSecurityGroupMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusterSecurityGroups, tokenKey: \ClusterSecurityGroupMessage.marker, onPage: onPage)
    }

    ///  Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters. If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.
    public func describeClusterSnapshotsPaginator(
        _ input: DescribeClusterSnapshotsMessage,
        onPage: @escaping (SnapshotMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusterSnapshots, tokenKey: \SnapshotMessage.marker, onPage: onPage)
    }

    ///  Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all subnet groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.
    public func describeClusterSubnetGroupsPaginator(
        _ input: DescribeClusterSubnetGroupsMessage,
        onPage: @escaping (ClusterSubnetGroupMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusterSubnetGroups, tokenKey: \ClusterSubnetGroupMessage.marker, onPage: onPage)
    }

    ///  Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.
    public func describeClusterVersionsPaginator(
        _ input: DescribeClusterVersionsMessage,
        onPage: @escaping (ClusterVersionsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusterVersions, tokenKey: \ClusterVersionsMessage.marker, onPage: onPage)
    }

    ///  Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all clusters that have any combination of those values are returned. If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.
    public func describeClustersPaginator(
        _ input: DescribeClustersMessage,
        onPage: @escaping (ClustersMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeClusters, tokenKey: \ClustersMessage.marker, onPage: onPage)
    }

    ///  Returns a list of parameter settings for the specified parameter group family.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.
    public func describeDefaultClusterParametersPaginator(
        _ input: DescribeDefaultClusterParametersMessage,
        onPage: @escaping (DescribeDefaultClusterParametersResult,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDefaultClusterParameters, tokenKey: \DescribeDefaultClusterParametersResult.defaultClusterParameters?.marker, onPage: onPage)
    }

    ///  Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all subscriptions that have any combination of those values are returned. If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.
    public func describeEventSubscriptionsPaginator(
        _ input: DescribeEventSubscriptionsMessage,
        onPage: @escaping (EventSubscriptionsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEventSubscriptions, tokenKey: \EventSubscriptionsMessage.marker, onPage: onPage)
    }

    ///  Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        onPage: @escaping (EventsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvents, tokenKey: \EventsMessage.marker, onPage: onPage)
    }

    ///  Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all HSM client certificates that have any combination of those values are returned. If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.
    public func describeHsmClientCertificatesPaginator(
        _ input: DescribeHsmClientCertificatesMessage,
        onPage: @escaping (HsmClientCertificateMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeHsmClientCertificates, tokenKey: \HsmClientCertificateMessage.marker, onPage: onPage)
    }

    ///  Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all HSM connections that have any combination of those values are returned. If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.
    public func describeHsmConfigurationsPaginator(
        _ input: DescribeHsmConfigurationsMessage,
        onPage: @escaping (HsmConfigurationMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeHsmConfigurations, tokenKey: \HsmConfigurationMessage.marker, onPage: onPage)
    }

    ///  Returns properties of possible node configurations such as node type, number of nodes, and disk usage for the specified action type.
    public func describeNodeConfigurationOptionsPaginator(
        _ input: DescribeNodeConfigurationOptionsMessage,
        onPage: @escaping (NodeConfigurationOptionsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeNodeConfigurationOptions, tokenKey: \NodeConfigurationOptionsMessage.marker, onPage: onPage)
    }

    ///  Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS Region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.
    public func describeOrderableClusterOptionsPaginator(
        _ input: DescribeOrderableClusterOptionsMessage,
        onPage: @escaping (OrderableClusterOptionsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeOrderableClusterOptions, tokenKey: \OrderableClusterOptionsMessage.marker, onPage: onPage)
    }

    ///  Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to PurchaseReservedNodeOffering to reserve one or more nodes for your Amazon Redshift cluster.   For more information about reserved node offerings, go to Purchasing Reserved Nodes in the Amazon Redshift Cluster Management Guide.
    public func describeReservedNodeOfferingsPaginator(
        _ input: DescribeReservedNodeOfferingsMessage,
        onPage: @escaping (ReservedNodeOfferingsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReservedNodeOfferings, tokenKey: \ReservedNodeOfferingsMessage.marker, onPage: onPage)
    }

    ///  Returns the descriptions of the reserved nodes.
    public func describeReservedNodesPaginator(
        _ input: DescribeReservedNodesMessage,
        onPage: @escaping (ReservedNodesMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReservedNodes, tokenKey: \ReservedNodesMessage.marker, onPage: onPage)
    }

    ///  Describes properties of scheduled actions. 
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsMessage,
        onPage: @escaping (ScheduledActionsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeScheduledActions, tokenKey: \ScheduledActionsMessage.marker, onPage: onPage)
    }

}

extension Redshift.DescribeClusterParameterGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClusterParameterGroupsMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            parameterGroupName: self.parameterGroupName,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeClusterParametersMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClusterParametersMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            parameterGroupName: self.parameterGroupName,
            source: self.source
        )

    }
}

extension Redshift.DescribeClusterSecurityGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClusterSecurityGroupsMessage {
        return .init(
            clusterSecurityGroupName: self.clusterSecurityGroupName,
            marker: token,
            maxRecords: self.maxRecords,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeClusterSnapshotsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClusterSnapshotsMessage {
        return .init(
            clusterExists: self.clusterExists,
            clusterIdentifier: self.clusterIdentifier,
            endTime: self.endTime,
            marker: token,
            maxRecords: self.maxRecords,
            ownerAccount: self.ownerAccount,
            snapshotIdentifier: self.snapshotIdentifier,
            snapshotType: self.snapshotType,
            sortingEntities: self.sortingEntities,
            startTime: self.startTime,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeClusterSubnetGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClusterSubnetGroupsMessage {
        return .init(
            clusterSubnetGroupName: self.clusterSubnetGroupName,
            marker: token,
            maxRecords: self.maxRecords,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeClusterVersionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClusterVersionsMessage {
        return .init(
            clusterParameterGroupFamily: self.clusterParameterGroupFamily,
            clusterVersion: self.clusterVersion,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension Redshift.DescribeClustersMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeClustersMessage {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            marker: token,
            maxRecords: self.maxRecords,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeDefaultClusterParametersMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeDefaultClusterParametersMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            parameterGroupFamily: self.parameterGroupFamily
        )

    }
}

extension Redshift.DescribeEventSubscriptionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeEventSubscriptionsMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            subscriptionName: self.subscriptionName,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeEventsMessage {
        return .init(
            duration: self.duration,
            endTime: self.endTime,
            marker: token,
            maxRecords: self.maxRecords,
            sourceIdentifier: self.sourceIdentifier,
            sourceType: self.sourceType,
            startTime: self.startTime
        )

    }
}

extension Redshift.DescribeHsmClientCertificatesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeHsmClientCertificatesMessage {
        return .init(
            hsmClientCertificateIdentifier: self.hsmClientCertificateIdentifier,
            marker: token,
            maxRecords: self.maxRecords,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeHsmConfigurationsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeHsmConfigurationsMessage {
        return .init(
            hsmConfigurationIdentifier: self.hsmConfigurationIdentifier,
            marker: token,
            maxRecords: self.maxRecords,
            tagKeys: self.tagKeys,
            tagValues: self.tagValues
        )

    }
}

extension Redshift.DescribeNodeConfigurationOptionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeNodeConfigurationOptionsMessage {
        return .init(
            actionType: self.actionType,
            clusterIdentifier: self.clusterIdentifier,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            ownerAccount: self.ownerAccount,
            snapshotIdentifier: self.snapshotIdentifier
        )

    }
}

extension Redshift.DescribeOrderableClusterOptionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeOrderableClusterOptionsMessage {
        return .init(
            clusterVersion: self.clusterVersion,
            marker: token,
            maxRecords: self.maxRecords,
            nodeType: self.nodeType
        )

    }
}

extension Redshift.DescribeReservedNodeOfferingsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeReservedNodeOfferingsMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            reservedNodeOfferingId: self.reservedNodeOfferingId
        )

    }
}

extension Redshift.DescribeReservedNodesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeReservedNodesMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            reservedNodeId: self.reservedNodeId
        )

    }
}

extension Redshift.DescribeScheduledActionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Redshift.DescribeScheduledActionsMessage {
        return .init(
            active: self.active,
            endTime: self.endTime,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            scheduledActionName: self.scheduledActionName,
            startTime: self.startTime,
            targetActionType: self.targetActionType
        )

    }
}


