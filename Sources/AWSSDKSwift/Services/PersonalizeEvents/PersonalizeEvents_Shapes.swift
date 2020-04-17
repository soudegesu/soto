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

extension PersonalizeEvents {
    //MARK: Enums

    //MARK: Shapes

    public struct Event: AWSEncodableShape {

        /// An ID associated with the event. If an event ID is not provided, Amazon Personalize generates a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses the event ID to distinquish unique events. Any subsequent events after the first with the same event ID are not used in model training.
        public let eventId: String?
        /// The type of event. This property corresponds to the EVENT_TYPE field of the Interactions schema.
        public let eventType: String
        /// A string map of event-specific data that you might choose to record. For example, if a user rates a movie on your site, you might send the movie ID and rating, and the number of movie ratings made by the user. Each item in the map consists of a key-value pair. For example,  {"itemId": "movie1"}   {"itemId": "movie2", "eventValue": "4.5"}   {"itemId": "movie3", "eventValue": "3", "numberOfRatings": "12"}  The keys use camel case names that match the fields in the Interactions schema. The itemId and eventValue keys correspond to the ITEM_ID and EVENT_VALUE fields. In the above example, the eventType might be 'MovieRating' with eventValue being the rating. The numberOfRatings would match the 'NUMBER_OF_RATINGS' field defined in the Interactions schema.
        public let properties: String
        /// The timestamp on the client side when the event occurred.
        public let sentAt: TimeStamp

        public init(eventId: String? = nil, eventType: String, properties: String, sentAt: TimeStamp) {
            self.eventId = eventId
            self.eventType = eventType
            self.properties = properties
            self.sentAt = sentAt
        }

        public func validate(name: String) throws {
            try validate(self.eventId, name: "eventId", parent: name, max: 256)
            try validate(self.eventId, name: "eventId", parent: name, min: 1)
            try validate(self.eventType, name: "eventType", parent: name, max: 256)
            try validate(self.eventType, name: "eventType", parent: name, min: 1)
            try validate(self.properties, name: "properties", parent: name, max: 1024)
            try validate(self.properties, name: "properties", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case eventId = "eventId"
            case eventType = "eventType"
            case properties = "properties"
            case sentAt = "sentAt"
        }
    }

    public struct PutEventsRequest: AWSEncodableShape {

        /// A list of event data from the session.
        public let eventList: [Event]
        /// The session ID associated with the user's visit.
        public let sessionId: String
        /// The tracking ID for the event. The ID is generated by a call to the CreateEventTracker API.
        public let trackingId: String
        /// The user associated with the event.
        public let userId: String?

        public init(eventList: [Event], sessionId: String, trackingId: String, userId: String? = nil) {
            self.eventList = eventList
            self.sessionId = sessionId
            self.trackingId = trackingId
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.eventList.forEach {
                try $0.validate(name: "\(name).eventList[]")
            }
            try validate(self.eventList, name: "eventList", parent: name, max: 10)
            try validate(self.eventList, name: "eventList", parent: name, min: 1)
            try validate(self.sessionId, name: "sessionId", parent: name, max: 256)
            try validate(self.sessionId, name: "sessionId", parent: name, min: 1)
            try validate(self.trackingId, name: "trackingId", parent: name, max: 256)
            try validate(self.trackingId, name: "trackingId", parent: name, min: 1)
            try validate(self.userId, name: "userId", parent: name, max: 256)
            try validate(self.userId, name: "userId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case eventList = "eventList"
            case sessionId = "sessionId"
            case trackingId = "trackingId"
            case userId = "userId"
        }
    }
}
