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
import Foundation

extension IoT1ClickProjects {
    //MARK: Enums

    //MARK: Shapes

    public struct AssociateDeviceWithPlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceTemplateName", location: .uri(locationName: "deviceTemplateName")), 
            AWSMemberEncoding(label: "placementName", location: .uri(locationName: "placementName")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all deviceId values.
        public let deviceId: String
        /// The device template name to associate with the device ID.
        public let deviceTemplateName: String
        /// The name of the placement in which to associate the device.
        public let placementName: String
        /// The name of the project containing the placement in which to associate the device.
        public let projectName: String

        public init(deviceId: String, deviceTemplateName: String, placementName: String, projectName: String) {
            self.deviceId = deviceId
            self.deviceTemplateName = deviceTemplateName
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.deviceId, name: "deviceId", parent: name, max: 32)
            try validate(self.deviceId, name: "deviceId", parent: name, min: 1)
            try validate(self.deviceTemplateName, name: "deviceTemplateName", parent: name, max: 128)
            try validate(self.deviceTemplateName, name: "deviceTemplateName", parent: name, min: 1)
            try validate(self.deviceTemplateName, name: "deviceTemplateName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct AssociateDeviceWithPlacementResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct CreatePlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.
        public let attributes: [String: String]?
        /// The name of the placement to be created.
        public let placementName: String
        /// The name of the project in which to create the placement.
        public let projectName: String

        public init(attributes: [String: String]? = nil, placementName: String, projectName: String) {
            self.attributes = attributes
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try self.attributes?.forEach {
                try validate($0.key, name: "attributes.key", parent: name, max: 128)
                try validate($0.key, name: "attributes.key", parent: name, min: 1)
                try validate($0.value, name: "attributes[\"\($0.key)\"]", parent: name, max: 800)
            }
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case placementName = "placementName"
        }
    }

    public struct CreatePlacementResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct CreateProjectRequest: AWSEncodableShape {

        /// An optional description for the project.
        public let description: String?
        /// The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update callbackOverrides for the device templates using the UpdateProject API.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project to create.
        public let projectName: String
        /// Optional tags (metadata key/value pairs) to be associated with the project. For example, { {"key1": "value1", "key2": "value2"} }. For more information, see AWS Tagging Strategies.
        public let tags: [String: String]?

        public init(description: String? = nil, placementTemplate: PlacementTemplate? = nil, projectName: String, tags: [String: String]? = nil) {
            self.description = description
            self.placementTemplate = placementTemplate
            self.projectName = projectName
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.description, name: "description", parent: name, max: 500)
            try validate(self.description, name: "description", parent: name, min: 0)
            try self.placementTemplate?.validate(name: "\(name).placementTemplate")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
            case tags = "tags"
        }
    }

    public struct CreateProjectResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeletePlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "placementName", location: .uri(locationName: "placementName")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The name of the empty placement to delete.
        public let placementName: String
        /// The project containing the empty placement to delete.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeletePlacementResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeleteProjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The name of the empty project to delete.
        public let projectName: String

        public init(projectName: String) {
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteProjectResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct DescribePlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "placementName", location: .uri(locationName: "placementName")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The name of the placement within a project.
        public let placementName: String
        /// The project containing the placement to be described.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribePlacementResponse: AWSDecodableShape {

        /// An object describing the placement.
        public let placement: PlacementDescription

        public init(placement: PlacementDescription) {
            self.placement = placement
        }

        private enum CodingKeys: String, CodingKey {
            case placement = "placement"
        }
    }

    public struct DescribeProjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The name of the project to be described.
        public let projectName: String

        public init(projectName: String) {
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeProjectResponse: AWSDecodableShape {

        /// An object describing the project.
        public let project: ProjectDescription

        public init(project: ProjectDescription) {
            self.project = project
        }

        private enum CodingKeys: String, CodingKey {
            case project = "project"
        }
    }

    public struct DeviceTemplate: AWSEncodableShape & AWSDecodableShape {

        /// An optional Lambda function to invoke instead of the default Lambda function provided by the placement template.
        public let callbackOverrides: [String: String]?
        /// The device type, which currently must be "button".
        public let deviceType: String?

        public init(callbackOverrides: [String: String]? = nil, deviceType: String? = nil) {
            self.callbackOverrides = callbackOverrides
            self.deviceType = deviceType
        }

        public func validate(name: String) throws {
            try self.callbackOverrides?.forEach {
                try validate($0.key, name: "callbackOverrides.key", parent: name, max: 128)
                try validate($0.key, name: "callbackOverrides.key", parent: name, min: 1)
                try validate($0.value, name: "callbackOverrides[\"\($0.key)\"]", parent: name, max: 200)
            }
            try validate(self.deviceType, name: "deviceType", parent: name, max: 128)
        }

        private enum CodingKeys: String, CodingKey {
            case callbackOverrides = "callbackOverrides"
            case deviceType = "deviceType"
        }
    }

    public struct DisassociateDeviceFromPlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceTemplateName", location: .uri(locationName: "deviceTemplateName")), 
            AWSMemberEncoding(label: "placementName", location: .uri(locationName: "placementName")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The device ID that should be removed from the placement.
        public let deviceTemplateName: String
        /// The name of the placement that the device should be removed from.
        public let placementName: String
        /// The name of the project that contains the placement.
        public let projectName: String

        public init(deviceTemplateName: String, placementName: String, projectName: String) {
            self.deviceTemplateName = deviceTemplateName
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.deviceTemplateName, name: "deviceTemplateName", parent: name, max: 128)
            try validate(self.deviceTemplateName, name: "deviceTemplateName", parent: name, min: 1)
            try validate(self.deviceTemplateName, name: "deviceTemplateName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DisassociateDeviceFromPlacementResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct GetDevicesInPlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "placementName", location: .uri(locationName: "placementName")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The name of the placement to get the devices from.
        public let placementName: String
        /// The name of the project containing the placement.
        public let projectName: String

        public init(placementName: String, projectName: String) {
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetDevicesInPlacementResponse: AWSDecodableShape {

        /// An object containing the devices (zero or more) within the placement.
        public let devices: [String: String]

        public init(devices: [String: String]) {
            self.devices = devices
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
        }
    }

    public struct ListPlacementsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The maximum number of results to return per request. If not set, a default value of 100 is used.
        public let maxResults: Int?
        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The project containing the placements to be listed.
        public let projectName: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, projectName: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 250)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListPlacementsResponse: AWSDecodableShape {

        /// The token used to retrieve the next set of results - will be effectively empty if there are no further results.
        public let nextToken: String?
        /// An object listing the requested placements.
        public let placements: [PlacementSummary]

        public init(nextToken: String? = nil, placements: [PlacementSummary]) {
            self.nextToken = nextToken
            self.placements = placements
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case placements = "placements"
        }
    }

    public struct ListProjectsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        /// The maximum number of results to return per request. If not set, a default value of 100 is used.
        public let maxResults: Int?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 250)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListProjectsResponse: AWSDecodableShape {

        /// The token used to retrieve the next set of results - will be effectively empty if there are no further results.
        public let nextToken: String?
        /// An object containing the list of projects.
        public let projects: [ProjectSummary]

        public init(nextToken: String? = nil, projects: [ProjectSummary]) {
            self.nextToken = nextToken
            self.projects = projects
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case projects = "projects"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn"))
        ]

        /// The ARN of the resource whose tags you want to list.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws:iot1click:[A-Za-z0-9_/.-]{0,63}:\\d+:projects/[0-9A-Za-z_-]{1,128}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {

        /// The tags (metadata key/value pairs) which you have assigned to the resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct PlacementDescription: AWSDecodableShape {

        /// The user-defined attributes associated with the placement.
        public let attributes: [String: String]
        /// The date when the placement was initially created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The name of the placement.
        public let placementName: String
        /// The name of the project containing the placement.
        public let projectName: String
        /// The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(attributes: [String: String], createdDate: TimeStamp, placementName: String, projectName: String, updatedDate: TimeStamp) {
            self.attributes = attributes
            self.createdDate = createdDate
            self.placementName = placementName
            self.projectName = projectName
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case createdDate = "createdDate"
            case placementName = "placementName"
            case projectName = "projectName"
            case updatedDate = "updatedDate"
        }
    }

    public struct PlacementSummary: AWSDecodableShape {

        /// The date when the placement was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The name of the placement being summarized.
        public let placementName: String
        /// The name of the project containing the placement.
        public let projectName: String
        /// The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(createdDate: TimeStamp, placementName: String, projectName: String, updatedDate: TimeStamp) {
            self.createdDate = createdDate
            self.placementName = placementName
            self.projectName = projectName
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case createdDate = "createdDate"
            case placementName = "placementName"
            case projectName = "projectName"
            case updatedDate = "updatedDate"
        }
    }

    public struct PlacementTemplate: AWSEncodableShape & AWSDecodableShape {

        /// The default attributes (key/value pairs) to be applied to all placements using this template.
        public let defaultAttributes: [String: String]?
        /// An object specifying the DeviceTemplate for all placements using this (PlacementTemplate) template.
        public let deviceTemplates: [String: DeviceTemplate]?

        public init(defaultAttributes: [String: String]? = nil, deviceTemplates: [String: DeviceTemplate]? = nil) {
            self.defaultAttributes = defaultAttributes
            self.deviceTemplates = deviceTemplates
        }

        public func validate(name: String) throws {
            try self.defaultAttributes?.forEach {
                try validate($0.key, name: "defaultAttributes.key", parent: name, max: 128)
                try validate($0.key, name: "defaultAttributes.key", parent: name, min: 1)
                try validate($0.value, name: "defaultAttributes[\"\($0.key)\"]", parent: name, max: 800)
            }
            try self.deviceTemplates?.forEach {
                try validate($0.key, name: "deviceTemplates.key", parent: name, max: 128)
                try validate($0.key, name: "deviceTemplates.key", parent: name, min: 1)
                try validate($0.key, name: "deviceTemplates.key", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
                try $0.value.validate(name: "\(name).deviceTemplates[\"\($0.key)\"]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case defaultAttributes = "defaultAttributes"
            case deviceTemplates = "deviceTemplates"
        }
    }

    public struct ProjectDescription: AWSDecodableShape {

        /// The ARN of the project.
        public let arn: String?
        /// The date when the project was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The description of the project.
        public let description: String?
        /// An object describing the project's placement specifications.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project for which to obtain information from.
        public let projectName: String
        /// The tags (metadata key/value pairs) associated with the project.
        public let tags: [String: String]?
        /// The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(arn: String? = nil, createdDate: TimeStamp, description: String? = nil, placementTemplate: PlacementTemplate? = nil, projectName: String, tags: [String: String]? = nil, updatedDate: TimeStamp) {
            self.arn = arn
            self.createdDate = createdDate
            self.description = description
            self.placementTemplate = placementTemplate
            self.projectName = projectName
            self.tags = tags
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdDate = "createdDate"
            case description = "description"
            case placementTemplate = "placementTemplate"
            case projectName = "projectName"
            case tags = "tags"
            case updatedDate = "updatedDate"
        }
    }

    public struct ProjectSummary: AWSDecodableShape {

        /// The ARN of the project.
        public let arn: String?
        /// The date when the project was originally created, in UNIX epoch time format.
        public let createdDate: TimeStamp
        /// The name of the project being summarized.
        public let projectName: String
        /// The tags (metadata key/value pairs) associated with the project.
        public let tags: [String: String]?
        /// The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then createdDate and updatedDate are the same.
        public let updatedDate: TimeStamp

        public init(arn: String? = nil, createdDate: TimeStamp, projectName: String, tags: [String: String]? = nil, updatedDate: TimeStamp) {
            self.arn = arn
            self.createdDate = createdDate
            self.projectName = projectName
            self.tags = tags
            self.updatedDate = updatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdDate = "createdDate"
            case projectName = "projectName"
            case tags = "tags"
            case updatedDate = "updatedDate"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn"))
        ]

        /// The ARN of the resouce for which tag(s) should be added or modified.
        public let resourceArn: String
        /// The new or modifying tag(s) for the resource. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws:iot1click:[A-Za-z0-9_/.-]{0,63}:\\d+:projects/[0-9A-Za-z_-]{1,128}$")
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn")), 
            AWSMemberEncoding(label: "tagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        /// The ARN of the resource whose tag you want to remove.
        public let resourceArn: String
        /// The keys of those tags which you want to remove.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws:iot1click:[A-Za-z0-9_/.-]{0,63}:\\d+:projects/[0-9A-Za-z_-]{1,128}$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
            }
            try validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
            try validate(self.tagKeys, name: "tagKeys", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct UpdatePlacementRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "placementName", location: .uri(locationName: "placementName")), 
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.
        public let attributes: [String: String]?
        /// The name of the placement to update.
        public let placementName: String
        /// The name of the project containing the placement to be updated.
        public let projectName: String

        public init(attributes: [String: String]? = nil, placementName: String, projectName: String) {
            self.attributes = attributes
            self.placementName = placementName
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try self.attributes?.forEach {
                try validate($0.key, name: "attributes.key", parent: name, max: 128)
                try validate($0.key, name: "attributes.key", parent: name, min: 1)
                try validate($0.value, name: "attributes[\"\($0.key)\"]", parent: name, max: 800)
            }
            try validate(self.placementName, name: "placementName", parent: name, max: 128)
            try validate(self.placementName, name: "placementName", parent: name, min: 1)
            try validate(self.placementName, name: "placementName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
        }
    }

    public struct UpdatePlacementResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct UpdateProjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectName", location: .uri(locationName: "projectName"))
        ]

        /// An optional user-defined description for the project.
        public let description: String?
        /// An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given placementTemplate, you can update the associated callbackOverrides for the device definition using this API.
        public let placementTemplate: PlacementTemplate?
        /// The name of the project to be updated.
        public let projectName: String

        public init(description: String? = nil, placementTemplate: PlacementTemplate? = nil, projectName: String) {
            self.description = description
            self.placementTemplate = placementTemplate
            self.projectName = projectName
        }

        public func validate(name: String) throws {
            try validate(self.description, name: "description", parent: name, max: 500)
            try validate(self.description, name: "description", parent: name, min: 0)
            try self.placementTemplate?.validate(name: "\(name).placementTemplate")
            try validate(self.projectName, name: "projectName", parent: name, max: 128)
            try validate(self.projectName, name: "projectName", parent: name, min: 1)
            try validate(self.projectName, name: "projectName", parent: name, pattern: "^[0-9A-Za-z_-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case placementTemplate = "placementTemplate"
        }
    }

    public struct UpdateProjectResponse: AWSDecodableShape {


        public init() {
        }

    }
}
