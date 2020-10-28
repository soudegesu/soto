// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ResourceGroups {

    ///  Returns a list of ARNs of the resources that are members of a specified resource group.
    public func listGroupResourcesPaginator(_ input: ListGroupResourcesInput, onPage: @escaping (ListGroupResourcesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroupResources, tokenKey: \ListGroupResourcesOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of existing resource groups in your account.
    public func listGroupsPaginator(_ input: ListGroupsInput, onPage: @escaping (ListGroupsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroups, tokenKey: \ListGroupsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of AWS resource identifiers that matches the specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
    public func searchResourcesPaginator(_ input: SearchResourcesInput, onPage: @escaping (SearchResourcesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchResources, tokenKey: \SearchResourcesOutput.nextToken, onPage: onPage)
    }

}

extension ResourceGroups.ListGroupResourcesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.ListGroupResourcesInput {
        return .init(
            filters: self.filters, 
            group: self.group, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension ResourceGroups.ListGroupsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.ListGroupsInput {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension ResourceGroups.SearchResourcesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.SearchResourcesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceQuery: self.resourceQuery
        )

    }
}


