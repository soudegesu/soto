// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MarketplaceCatalog {
    //MARK: Enums

    public enum ChangeStatus: String, CustomStringConvertible, Codable {
        case preparing = "PREPARING"
        case applying = "APPLYING"
        case succeeded = "SUCCEEDED"
        case cancelled = "CANCELLED"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public enum FailureCode: String, CustomStringConvertible, Codable {
        case clientError = "CLIENT_ERROR"
        case serverFault = "SERVER_FAULT"
        public var description: String { return self.rawValue }
    }

    public enum SortOrder: String, CustomStringConvertible, Codable {
        case ascending = "ASCENDING"
        case descending = "DESCENDING"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct CancelChangeSetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Catalog", location: .querystring(locationName: "catalog"), required: true, type: .string), 
            AWSShapeMember(label: "ChangeSetId", location: .querystring(locationName: "changeSetId"), required: true, type: .string)
        ]

        /// Required. The catalog related to the request. Fixed value: AWSMarketplace.
        public let catalog: String
        /// Required. The unique identifier of the StartChangeSet request that you want to cancel.
        public let changeSetId: String

        public init(catalog: String, changeSetId: String) {
            self.catalog = catalog
            self.changeSetId = changeSetId
        }

        public func validate(name: String) throws {
            try validate(self.catalog, name:"catalog", parent: name, max: 64)
            try validate(self.catalog, name:"catalog", parent: name, min: 1)
            try validate(self.catalog, name:"catalog", parent: name, pattern: "^[a-zA-Z]+$")
            try validate(self.changeSetId, name:"changeSetId", parent: name, max: 255)
            try validate(self.changeSetId, name:"changeSetId", parent: name, min: 1)
            try validate(self.changeSetId, name:"changeSetId", parent: name, pattern: "^[\\w\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case catalog = "catalog"
            case changeSetId = "changeSetId"
        }
    }

    public struct CancelChangeSetResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeSetArn", required: false, type: .string), 
            AWSShapeMember(label: "ChangeSetId", required: false, type: .string)
        ]

        /// The ARN associated with the change set referenced in this request.
        public let changeSetArn: String?
        /// The unique identifier for the change set referenced in this request.
        public let changeSetId: String?

        public init(changeSetArn: String? = nil, changeSetId: String? = nil) {
            self.changeSetArn = changeSetArn
            self.changeSetId = changeSetId
        }

        private enum CodingKeys: String, CodingKey {
            case changeSetArn = "ChangeSetArn"
            case changeSetId = "ChangeSetId"
        }
    }

    public struct Change: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeType", required: true, type: .string), 
            AWSShapeMember(label: "Details", required: true, type: .string), 
            AWSShapeMember(label: "Entity", required: true, type: .structure)
        ]

        /// Change types are single string values that describe your intention for the change. Each change type is unique for each EntityType provided in the change's scope.
        public let changeType: String
        /// This object contains details specific to the change type of the requested change.
        public let details: String
        /// The entity to be changed.
        public let entity: Entity

        public init(changeType: String, details: String, entity: Entity) {
            self.changeType = changeType
            self.details = details
            self.entity = entity
        }

        public func validate(name: String) throws {
            try validate(self.changeType, name:"changeType", parent: name, max: 255)
            try validate(self.changeType, name:"changeType", parent: name, min: 1)
            try validate(self.changeType, name:"changeType", parent: name, pattern: "^[A-Z][\\w]*$")
            try validate(self.details, name:"details", parent: name, max: 16384)
            try validate(self.details, name:"details", parent: name, min: 2)
            try validate(self.details, name:"details", parent: name, pattern: "^[\\s]*\\{[\\s\\S]*\\}[\\s]*$")
            try self.entity.validate(name: "\(name).entity")
        }

        private enum CodingKeys: String, CodingKey {
            case changeType = "ChangeType"
            case details = "Details"
            case entity = "Entity"
        }
    }

    public struct ChangeSetSummaryListItem: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeSetArn", required: false, type: .string), 
            AWSShapeMember(label: "ChangeSetId", required: false, type: .string), 
            AWSShapeMember(label: "ChangeSetName", required: false, type: .string), 
            AWSShapeMember(label: "EndTime", required: false, type: .string), 
            AWSShapeMember(label: "EntityIdList", required: false, type: .list), 
            AWSShapeMember(label: "FailureCode", required: false, type: .enum), 
            AWSShapeMember(label: "StartTime", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum)
        ]

        /// The ARN associated with the unique identifier for the change set referenced in this request.
        public let changeSetArn: String?
        /// The unique identifier for a change set.
        public let changeSetId: String?
        /// The non-unique name for the change set.
        public let changeSetName: String?
        /// The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was finished.
        public let endTime: String?
        /// This object is a list of entity IDs (string) that are a part of a change set. The entity ID list is a maximum of 20 entities. It must contain at least one entity.
        public let entityIdList: [String]?
        /// Returned if the change set is in FAILED status. Can be either CLIENT_ERROR, which means that there are issues with the request (see the ErrorDetailList of DescribeChangeSet), or SERVER_FAULT, which means that there is a problem in the system, and you should retry your request.
        public let failureCode: FailureCode?
        /// The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was started.
        public let startTime: String?
        /// The current status of the change set.
        public let status: ChangeStatus?

        public init(changeSetArn: String? = nil, changeSetId: String? = nil, changeSetName: String? = nil, endTime: String? = nil, entityIdList: [String]? = nil, failureCode: FailureCode? = nil, startTime: String? = nil, status: ChangeStatus? = nil) {
            self.changeSetArn = changeSetArn
            self.changeSetId = changeSetId
            self.changeSetName = changeSetName
            self.endTime = endTime
            self.entityIdList = entityIdList
            self.failureCode = failureCode
            self.startTime = startTime
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case changeSetArn = "ChangeSetArn"
            case changeSetId = "ChangeSetId"
            case changeSetName = "ChangeSetName"
            case endTime = "EndTime"
            case entityIdList = "EntityIdList"
            case failureCode = "FailureCode"
            case startTime = "StartTime"
            case status = "Status"
        }
    }

    public struct ChangeSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeType", required: false, type: .string), 
            AWSShapeMember(label: "Details", required: false, type: .string), 
            AWSShapeMember(label: "Entity", required: false, type: .structure), 
            AWSShapeMember(label: "ErrorDetailList", required: false, type: .list)
        ]

        /// The type of the change.
        public let changeType: String?
        /// This object contains details specific to the change type of the requested change.
        public let details: String?
        /// The entity to be changed.
        public let entity: Entity?
        /// An array of ErrorDetail objects associated with the change.
        public let errorDetailList: [ErrorDetail]?

        public init(changeType: String? = nil, details: String? = nil, entity: Entity? = nil, errorDetailList: [ErrorDetail]? = nil) {
            self.changeType = changeType
            self.details = details
            self.entity = entity
            self.errorDetailList = errorDetailList
        }

        private enum CodingKeys: String, CodingKey {
            case changeType = "ChangeType"
            case details = "Details"
            case entity = "Entity"
            case errorDetailList = "ErrorDetailList"
        }
    }

    public struct DescribeChangeSetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Catalog", location: .querystring(locationName: "catalog"), required: true, type: .string), 
            AWSShapeMember(label: "ChangeSetId", location: .querystring(locationName: "changeSetId"), required: true, type: .string)
        ]

        /// Required. The catalog related to the request. Fixed value: AWSMarketplace 
        public let catalog: String
        /// Required. The unique identifier for the StartChangeSet request that you want to describe the details for.
        public let changeSetId: String

        public init(catalog: String, changeSetId: String) {
            self.catalog = catalog
            self.changeSetId = changeSetId
        }

        public func validate(name: String) throws {
            try validate(self.catalog, name:"catalog", parent: name, max: 64)
            try validate(self.catalog, name:"catalog", parent: name, min: 1)
            try validate(self.catalog, name:"catalog", parent: name, pattern: "^[a-zA-Z]+$")
            try validate(self.changeSetId, name:"changeSetId", parent: name, max: 255)
            try validate(self.changeSetId, name:"changeSetId", parent: name, min: 1)
            try validate(self.changeSetId, name:"changeSetId", parent: name, pattern: "^[\\w\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case catalog = "catalog"
            case changeSetId = "changeSetId"
        }
    }

    public struct DescribeChangeSetResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeSet", required: false, type: .list), 
            AWSShapeMember(label: "ChangeSetArn", required: false, type: .string), 
            AWSShapeMember(label: "ChangeSetId", required: false, type: .string), 
            AWSShapeMember(label: "ChangeSetName", required: false, type: .string), 
            AWSShapeMember(label: "EndTime", required: false, type: .string), 
            AWSShapeMember(label: "FailureCode", required: false, type: .enum), 
            AWSShapeMember(label: "FailureDescription", required: false, type: .string), 
            AWSShapeMember(label: "StartTime", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum)
        ]

        /// An array of ChangeSummary objects.
        public let changeSet: [ChangeSummary]?
        /// The ARN associated with the unique identifier for the change set referenced in this request.
        public let changeSetArn: String?
        /// Required. The unique identifier for the change set referenced in this request.
        public let changeSetId: String?
        /// The optional name provided in the StartChangeSet request. If you do not provide a name, one is set by default.
        public let changeSetName: String?
        /// The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request transitioned to a terminal state. The change cannot transition to a different state. Null if the request is not in a terminal state. 
        public let endTime: String?
        /// Returned if the change set is in FAILED status. Can be either CLIENT_ERROR, which means that there are issues with the request (see the ErrorDetailList), or SERVER_FAULT, which means that there is a problem in the system, and you should retry your request.
        public let failureCode: FailureCode?
        /// Returned if there is a failure on the change set, but that failure is not related to any of the changes in the request.
        public let failureDescription: String?
        /// The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request started. 
        public let startTime: String?
        /// The status of the change request.
        public let status: ChangeStatus?

        public init(changeSet: [ChangeSummary]? = nil, changeSetArn: String? = nil, changeSetId: String? = nil, changeSetName: String? = nil, endTime: String? = nil, failureCode: FailureCode? = nil, failureDescription: String? = nil, startTime: String? = nil, status: ChangeStatus? = nil) {
            self.changeSet = changeSet
            self.changeSetArn = changeSetArn
            self.changeSetId = changeSetId
            self.changeSetName = changeSetName
            self.endTime = endTime
            self.failureCode = failureCode
            self.failureDescription = failureDescription
            self.startTime = startTime
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case changeSet = "ChangeSet"
            case changeSetArn = "ChangeSetArn"
            case changeSetId = "ChangeSetId"
            case changeSetName = "ChangeSetName"
            case endTime = "EndTime"
            case failureCode = "FailureCode"
            case failureDescription = "FailureDescription"
            case startTime = "StartTime"
            case status = "Status"
        }
    }

    public struct DescribeEntityRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Catalog", location: .querystring(locationName: "catalog"), required: true, type: .string), 
            AWSShapeMember(label: "EntityId", location: .querystring(locationName: "entityId"), required: true, type: .string)
        ]

        /// Required. The catalog related to the request. Fixed value: AWSMarketplace 
        public let catalog: String
        /// Required. The unique ID of the entity to describe.
        public let entityId: String

        public init(catalog: String, entityId: String) {
            self.catalog = catalog
            self.entityId = entityId
        }

        public func validate(name: String) throws {
            try validate(self.catalog, name:"catalog", parent: name, max: 64)
            try validate(self.catalog, name:"catalog", parent: name, min: 1)
            try validate(self.catalog, name:"catalog", parent: name, pattern: "^[a-zA-Z]+$")
            try validate(self.entityId, name:"entityId", parent: name, max: 255)
            try validate(self.entityId, name:"entityId", parent: name, min: 1)
            try validate(self.entityId, name:"entityId", parent: name, pattern: "^[\\w\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case catalog = "catalog"
            case entityId = "entityId"
        }
    }

    public struct DescribeEntityResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Details", required: false, type: .string), 
            AWSShapeMember(label: "EntityArn", required: false, type: .string), 
            AWSShapeMember(label: "EntityIdentifier", required: false, type: .string), 
            AWSShapeMember(label: "EntityType", required: false, type: .string), 
            AWSShapeMember(label: "LastModifiedDate", required: false, type: .string)
        ]

        /// This stringified JSON object includes the details of the entity.
        public let details: String?
        /// The ARN associated to the unique identifier for the change set referenced in this request.
        public let entityArn: String?
        /// The identifier of the entity, in the format of EntityId@RevisionId.
        public let entityIdentifier: String?
        /// The named type of the entity, in the format of EntityType@Version.
        public let entityType: String?
        /// The last modified date of the entity, in ISO 8601 format (2018-02-27T13:45:22Z).
        public let lastModifiedDate: String?

        public init(details: String? = nil, entityArn: String? = nil, entityIdentifier: String? = nil, entityType: String? = nil, lastModifiedDate: String? = nil) {
            self.details = details
            self.entityArn = entityArn
            self.entityIdentifier = entityIdentifier
            self.entityType = entityType
            self.lastModifiedDate = lastModifiedDate
        }

        private enum CodingKeys: String, CodingKey {
            case details = "Details"
            case entityArn = "EntityArn"
            case entityIdentifier = "EntityIdentifier"
            case entityType = "EntityType"
            case lastModifiedDate = "LastModifiedDate"
        }
    }

    public struct Entity: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Identifier", required: false, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .string)
        ]

        /// The identifier for the entity.
        public let identifier: String?
        /// The type of entity.
        public let `type`: String

        public init(identifier: String? = nil, type: String) {
            self.identifier = identifier
            self.`type` = `type`
        }

        public func validate(name: String) throws {
            try validate(self.identifier, name:"identifier", parent: name, max: 255)
            try validate(self.identifier, name:"identifier", parent: name, min: 1)
            try validate(self.identifier, name:"identifier", parent: name, pattern: "^[\\w\\-@]+$")
            try validate(self.`type`, name:"`type`", parent: name, max: 255)
            try validate(self.`type`, name:"`type`", parent: name, min: 1)
            try validate(self.`type`, name:"`type`", parent: name, pattern: "^[a-zA-Z]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case identifier = "Identifier"
            case `type` = "Type"
        }
    }

    public struct EntitySummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EntityArn", required: false, type: .string), 
            AWSShapeMember(label: "EntityId", required: false, type: .string), 
            AWSShapeMember(label: "EntityType", required: false, type: .string), 
            AWSShapeMember(label: "LastModifiedDate", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Visibility", required: false, type: .string)
        ]

        /// The ARN associated with the unique identifier for the entity.
        public let entityArn: String?
        /// The unique identifier for the entity.
        public let entityId: String?
        /// The type of the entity.
        public let entityType: String?
        /// The last time the entity was published, using ISO 8601 format (2018-02-27T13:45:22Z).
        public let lastModifiedDate: String?
        /// The name for the entity. This value is not unique. It is defined by the seller.
        public let name: String?
        /// The visibility status of the entity to buyers. This value can be Public (everyone can view the entity), Limited (the entity is visible to limited accounts only), or Restricted (the entity was published and then unpublished and only existing buyers can view it). 
        public let visibility: String?

        public init(entityArn: String? = nil, entityId: String? = nil, entityType: String? = nil, lastModifiedDate: String? = nil, name: String? = nil, visibility: String? = nil) {
            self.entityArn = entityArn
            self.entityId = entityId
            self.entityType = entityType
            self.lastModifiedDate = lastModifiedDate
            self.name = name
            self.visibility = visibility
        }

        private enum CodingKeys: String, CodingKey {
            case entityArn = "EntityArn"
            case entityId = "EntityId"
            case entityType = "EntityType"
            case lastModifiedDate = "LastModifiedDate"
            case name = "Name"
            case visibility = "Visibility"
        }
    }

    public struct ErrorDetail: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorCode", required: false, type: .string), 
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string)
        ]

        /// The error code that identifies the type of error.
        public let errorCode: String?
        /// The message for the error.
        public let errorMessage: String?

        public init(errorCode: String? = nil, errorMessage: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
        }
    }

    public struct Filter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "ValueList", required: false, type: .list)
        ]

        /// For ListEntities, the supported value for this is an EntityId. For ListChangeSets, the supported values are as follows:
        public let name: String?
        ///  ListEntities - This is a list of unique EntityIds.  ListChangeSets - The supported filter names and associated ValueLists is as follows:    ChangeSetName - The supported ValueList is a list of non-unique ChangeSetNames. These are defined when you call the StartChangeSet action.    Status - The supported ValueList is a list of statuses for all change set requests.    EntityId - The supported ValueList is a list of unique EntityIds.    BeforeStartTime - The supported ValueList is a list of all change sets that started before the filter value.    AfterStartTime - The supported ValueList is a list of all change sets that started after the filter value.    BeforeEndTime - The supported ValueList is a list of all change sets that ended before the filter value.    AfterEndTime - The supported ValueList is a list of all change sets that ended after the filter value.  
        public let valueList: [String]?

        public init(name: String? = nil, valueList: [String]? = nil) {
            self.name = name
            self.valueList = valueList
        }

        public func validate(name: String) throws {
            try validate(self.name, name:"name", parent: name, max: 255)
            try validate(self.name, name:"name", parent: name, min: 1)
            try validate(self.name, name:"name", parent: name, pattern: "^[a-zA-Z]+$")
            try validate(self.valueList, name:"valueList", parent: name, max: 10)
            try validate(self.valueList, name:"valueList", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case valueList = "ValueList"
        }
    }

    public struct ListChangeSetsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Catalog", required: true, type: .string), 
            AWSShapeMember(label: "FilterList", required: false, type: .list), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Sort", required: false, type: .structure)
        ]

        /// The catalog related to the request. Fixed value: AWSMarketplace 
        public let catalog: String
        /// An array of filter objects.
        public let filterList: [Filter]?
        /// The maximum number of results returned by a single call. This value must be provided in the next call to retrieve the next set of results. By default, this value is 20.
        public let maxResults: Int?
        /// The token value retrieved from a previous call to access the next page of results.
        public let nextToken: String?
        /// An object that contains two attributes, SortBy and SortOrder.
        public let sort: Sort?

        public init(catalog: String, filterList: [Filter]? = nil, maxResults: Int? = nil, nextToken: String? = nil, sort: Sort? = nil) {
            self.catalog = catalog
            self.filterList = filterList
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.sort = sort
        }

        public func validate(name: String) throws {
            try validate(self.catalog, name:"catalog", parent: name, max: 64)
            try validate(self.catalog, name:"catalog", parent: name, min: 1)
            try validate(self.catalog, name:"catalog", parent: name, pattern: "^[a-zA-Z]+$")
            try self.filterList?.forEach {
                try $0.validate(name: "\(name).filterList[]")
            }
            try validate(self.filterList, name:"filterList", parent: name, max: 8)
            try validate(self.filterList, name:"filterList", parent: name, min: 1)
            try validate(self.maxResults, name:"maxResults", parent: name, max: 20)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 2048)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[\\w+=.:@\\-\\/]$")
            try self.sort?.validate(name: "\(name).sort")
        }

        private enum CodingKeys: String, CodingKey {
            case catalog = "Catalog"
            case filterList = "FilterList"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case sort = "Sort"
        }
    }

    public struct ListChangeSetsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeSetSummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        ///  Array of ChangeSetSummaryListItem objects.
        public let changeSetSummaryList: [ChangeSetSummaryListItem]?
        /// The value of the next token, if it exists. Null if there are no more results.
        public let nextToken: String?

        public init(changeSetSummaryList: [ChangeSetSummaryListItem]? = nil, nextToken: String? = nil) {
            self.changeSetSummaryList = changeSetSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case changeSetSummaryList = "ChangeSetSummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct ListEntitiesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Catalog", required: true, type: .string), 
            AWSShapeMember(label: "EntityType", required: true, type: .string), 
            AWSShapeMember(label: "FilterList", required: false, type: .list), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Sort", required: false, type: .structure)
        ]

        /// The catalog related to the request. Fixed value: AWSMarketplace 
        public let catalog: String
        /// The type of entities to retrieve.
        public let entityType: String
        /// An array of filter objects. Each filter object contains two attributes, filterName and filterValues.
        public let filterList: [Filter]?
        /// Specifies the upper limit of the elements on a single page. If a value isn't provided, the default value is 20.
        public let maxResults: Int?
        /// The value of the next token, if it exists. Null if there are no more results.
        public let nextToken: String?
        /// An object that contains two attributes, SortBy and SortOrder.
        public let sort: Sort?

        public init(catalog: String, entityType: String, filterList: [Filter]? = nil, maxResults: Int? = nil, nextToken: String? = nil, sort: Sort? = nil) {
            self.catalog = catalog
            self.entityType = entityType
            self.filterList = filterList
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.sort = sort
        }

        public func validate(name: String) throws {
            try validate(self.catalog, name:"catalog", parent: name, max: 64)
            try validate(self.catalog, name:"catalog", parent: name, min: 1)
            try validate(self.catalog, name:"catalog", parent: name, pattern: "^[a-zA-Z]+$")
            try validate(self.entityType, name:"entityType", parent: name, max: 255)
            try validate(self.entityType, name:"entityType", parent: name, min: 1)
            try validate(self.entityType, name:"entityType", parent: name, pattern: "^[a-zA-Z]+$")
            try self.filterList?.forEach {
                try $0.validate(name: "\(name).filterList[]")
            }
            try validate(self.filterList, name:"filterList", parent: name, max: 8)
            try validate(self.filterList, name:"filterList", parent: name, min: 1)
            try validate(self.maxResults, name:"maxResults", parent: name, max: 20)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 2048)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[\\w+=.:@\\-\\/]$")
            try self.sort?.validate(name: "\(name).sort")
        }

        private enum CodingKeys: String, CodingKey {
            case catalog = "Catalog"
            case entityType = "EntityType"
            case filterList = "FilterList"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case sort = "Sort"
        }
    }

    public struct ListEntitiesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EntitySummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        ///  Array of EntitySummary object.
        public let entitySummaryList: [EntitySummary]?
        /// The value of the next token if it exists. Null if there is no more result.
        public let nextToken: String?

        public init(entitySummaryList: [EntitySummary]? = nil, nextToken: String? = nil) {
            self.entitySummaryList = entitySummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case entitySummaryList = "EntitySummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct Sort: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SortBy", required: false, type: .string), 
            AWSShapeMember(label: "SortOrder", required: false, type: .enum)
        ]

        /// For ListEntities, supported attributes include LastModifiedDate (default), Visibility, EntityId, and Name. For ListChangeSets, supported attributes include StartTime and EndTime.
        public let sortBy: String?
        /// The sorting order. Can be ASCENDING or DESCENDING. The default value is DESCENDING.
        public let sortOrder: SortOrder?

        public init(sortBy: String? = nil, sortOrder: SortOrder? = nil) {
            self.sortBy = sortBy
            self.sortOrder = sortOrder
        }

        public func validate(name: String) throws {
            try validate(self.sortBy, name:"sortBy", parent: name, max: 255)
            try validate(self.sortBy, name:"sortBy", parent: name, min: 1)
            try validate(self.sortBy, name:"sortBy", parent: name, pattern: "^[a-zA-Z]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case sortBy = "SortBy"
            case sortOrder = "SortOrder"
        }
    }

    public struct StartChangeSetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Catalog", required: true, type: .string), 
            AWSShapeMember(label: "ChangeSet", required: true, type: .list), 
            AWSShapeMember(label: "ChangeSetName", required: false, type: .string), 
            AWSShapeMember(label: "ClientRequestToken", required: false, type: .string)
        ]

        /// The catalog related to the request. Fixed value: AWSMarketplace 
        public let catalog: String
        /// Array of change object.
        public let changeSet: [Change]
        /// Optional case sensitive string of up to 100 ASCII characters. The change set name can be used to filter the list of change sets. 
        public let changeSetName: String?
        /// A unique token to identify the request to ensure idempotency.
        public let clientRequestToken: String?

        public init(catalog: String, changeSet: [Change], changeSetName: String? = nil, clientRequestToken: String? = nil) {
            self.catalog = catalog
            self.changeSet = changeSet
            self.changeSetName = changeSetName
            self.clientRequestToken = clientRequestToken
        }

        public func validate(name: String) throws {
            try validate(self.catalog, name:"catalog", parent: name, max: 64)
            try validate(self.catalog, name:"catalog", parent: name, min: 1)
            try validate(self.catalog, name:"catalog", parent: name, pattern: "^[a-zA-Z]+$")
            try self.changeSet.forEach {
                try $0.validate(name: "\(name).changeSet[]")
            }
            try validate(self.changeSet, name:"changeSet", parent: name, max: 20)
            try validate(self.changeSet, name:"changeSet", parent: name, min: 1)
            try validate(self.changeSetName, name:"changeSetName", parent: name, max: 100)
            try validate(self.changeSetName, name:"changeSetName", parent: name, min: 1)
            try validate(self.changeSetName, name:"changeSetName", parent: name, pattern: "^[\\w\\s+=.:@-]+$")
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, max: 36)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, min: 1)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, pattern: "^[\\w\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case catalog = "Catalog"
            case changeSet = "ChangeSet"
            case changeSetName = "ChangeSetName"
            case clientRequestToken = "ClientRequestToken"
        }
    }

    public struct StartChangeSetResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ChangeSetArn", required: false, type: .string), 
            AWSShapeMember(label: "ChangeSetId", required: false, type: .string)
        ]

        /// The ARN associated to the unique identifier generated for the request.
        public let changeSetArn: String?
        /// Unique identifier generated for the request.
        public let changeSetId: String?

        public init(changeSetArn: String? = nil, changeSetId: String? = nil) {
            self.changeSetArn = changeSetArn
            self.changeSetId = changeSetId
        }

        private enum CodingKeys: String, CodingKey {
            case changeSetArn = "ChangeSetArn"
            case changeSetId = "ChangeSetId"
        }
    }
}
