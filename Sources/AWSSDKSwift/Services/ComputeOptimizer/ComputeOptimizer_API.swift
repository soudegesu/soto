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

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS ComputeOptimizer service.

AWS Compute Optimizer is a service that analyzes the configuration and utilization metrics of your AWS resources, such as EC2 instances and Auto Scaling groups. It reports whether your resources are optimal, and generates optimization recommendations to reduce the cost and improve the performance of your workloads. Compute Optimizer also provides recent utilization metric data, as well as projected utilization metric data for the recommendations, which you can use to evaluate which recommendation provides the best price-performance trade-off. The analysis of your usage patterns can help you decide when to move or resize your running resources, and still meet your performance and capacity requirements. For more information about Compute Optimizer, including the required permissions to use the service, see the AWS Compute Optimizer User Guide.
*/
public struct ComputeOptimizer {

    // MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ComputeOptimizer client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "ComputeOptimizerService",
            service: "compute-optimizer",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            possibleErrorTypes: [ComputeOptimizerErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Describes recommendation export jobs created in the last seven days. Use the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to request an export of your recommendations. Then use the DescribeRecommendationExportJobs action to view your export jobs.
    public func describeRecommendationExportJobs(_ input: DescribeRecommendationExportJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRecommendationExportJobsResponse> {
        return self.client.execute(operation: "DescribeRecommendationExportJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per AWS Region.
    public func exportAutoScalingGroupRecommendations(_ input: ExportAutoScalingGroupRecommendationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ExportAutoScalingGroupRecommendationsResponse> {
        return self.client.execute(operation: "ExportAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per AWS Region.
    public func exportEC2InstanceRecommendations(_ input: ExportEC2InstanceRecommendationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ExportEC2InstanceRecommendationsResponse> {
        return self.client.execute(operation: "ExportEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns Auto Scaling group recommendations. AWS Compute Optimizer currently generates recommendations for Auto Scaling groups that are configured to run instances of the M, C, R, T, and X instance families. The service does not generate recommendations for Auto Scaling groups that have a scaling policy attached to them, or that do not have the same values for desired, minimum, and maximum capacity. In order for Compute Optimizer to analyze your Auto Scaling groups, they must be of a fixed size. For more information, see the AWS Compute Optimizer User Guide.
    public func getAutoScalingGroupRecommendations(_ input: GetAutoScalingGroupRecommendationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAutoScalingGroupRecommendationsResponse> {
        return self.client.execute(operation: "GetAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns Amazon EC2 instance recommendations. AWS Compute Optimizer currently generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It generates recommendations for M, C, R, T, and X instance families. For more information, see the AWS Compute Optimizer User Guide.
    public func getEC2InstanceRecommendations(_ input: GetEC2InstanceRecommendationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetEC2InstanceRecommendationsResponse> {
        return self.client.execute(operation: "GetEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the projected utilization metrics of Amazon EC2 instance recommendations.
    public func getEC2RecommendationProjectedMetrics(_ input: GetEC2RecommendationProjectedMetricsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetEC2RecommendationProjectedMetricsResponse> {
        return self.client.execute(operation: "GetEC2RecommendationProjectedMetrics", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is the master account of an organization, this action also confirms the enrollment status of member accounts within the organization.
    public func getEnrollmentStatus(_ input: GetEnrollmentStatusRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetEnrollmentStatusResponse> {
        return self.client.execute(operation: "GetEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the optimization findings for an account. For example, it returns the number of Amazon EC2 instances in an account that are under-provisioned, over-provisioned, or optimized. It also returns the number of Auto Scaling groups in an account that are not optimized, or optimized.
    public func getRecommendationSummaries(_ input: GetRecommendationSummariesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRecommendationSummariesResponse> {
        return self.client.execute(operation: "GetRecommendationSummaries", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a master account of an organization, this action can also be used to enroll member accounts within the organization.
    public func updateEnrollmentStatus(_ input: UpdateEnrollmentStatusRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateEnrollmentStatusResponse> {
        return self.client.execute(operation: "UpdateEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
