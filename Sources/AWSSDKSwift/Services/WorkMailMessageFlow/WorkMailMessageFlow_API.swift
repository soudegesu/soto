// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The WorkMail Message Flow API provides access to email messages as they are being sent and received by a WorkMail organization.
*/
public struct WorkMailMessageFlow {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "workmailmessageflow",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-05-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [WorkMailMessageFlowErrorType.self]
        )
    }

    ///  Retrieves the raw content of an in-transit email message, in MIME format. 
    public func getRawMessageContent(_ input: GetRawMessageContentRequest) -> Future<GetRawMessageContentResponse> {
        return client.send(operation: "GetRawMessageContent", path: "/messages/{messageId}", httpMethod: "GET", input: input)
    }
}
