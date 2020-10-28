// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Budgets {

    ///   Describes a budget action history detail. 
    public func describeBudgetActionHistoriesPaginator(_ input: DescribeBudgetActionHistoriesRequest, onPage: @escaping (DescribeBudgetActionHistoriesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBudgetActionHistories, tokenKey: \DescribeBudgetActionHistoriesResponse.nextToken, onPage: onPage)
    }

    ///   Describes all of the budget actions for an account. 
    public func describeBudgetActionsForAccountPaginator(_ input: DescribeBudgetActionsForAccountRequest, onPage: @escaping (DescribeBudgetActionsForAccountResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBudgetActionsForAccount, tokenKey: \DescribeBudgetActionsForAccountResponse.nextToken, onPage: onPage)
    }

    ///   Describes all of the budget actions for a budget. 
    public func describeBudgetActionsForBudgetPaginator(_ input: DescribeBudgetActionsForBudgetRequest, onPage: @escaping (DescribeBudgetActionsForBudgetResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBudgetActionsForBudget, tokenKey: \DescribeBudgetActionsForBudgetResponse.nextToken, onPage: onPage)
    }

    ///  Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.
    public func describeBudgetPerformanceHistoryPaginator(_ input: DescribeBudgetPerformanceHistoryRequest, onPage: @escaping (DescribeBudgetPerformanceHistoryResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBudgetPerformanceHistory, tokenKey: \DescribeBudgetPerformanceHistoryResponse.nextToken, onPage: onPage)
    }

    ///  Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func describeBudgetsPaginator(_ input: DescribeBudgetsRequest, onPage: @escaping (DescribeBudgetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBudgets, tokenKey: \DescribeBudgetsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the notifications that are associated with a budget.
    public func describeNotificationsForBudgetPaginator(_ input: DescribeNotificationsForBudgetRequest, onPage: @escaping (DescribeNotificationsForBudgetResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeNotificationsForBudget, tokenKey: \DescribeNotificationsForBudgetResponse.nextToken, onPage: onPage)
    }

    ///  Lists the subscribers that are associated with a notification.
    public func describeSubscribersForNotificationPaginator(_ input: DescribeSubscribersForNotificationRequest, onPage: @escaping (DescribeSubscribersForNotificationResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeSubscribersForNotification, tokenKey: \DescribeSubscribersForNotificationResponse.nextToken, onPage: onPage)
    }

}

extension Budgets.DescribeBudgetActionHistoriesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeBudgetActionHistoriesRequest {
        return .init(
            accountId: self.accountId, 
            actionId: self.actionId, 
            budgetName: self.budgetName, 
            maxResults: self.maxResults, 
            nextToken: token, 
            timePeriod: self.timePeriod
        )

    }
}

extension Budgets.DescribeBudgetActionsForAccountRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeBudgetActionsForAccountRequest {
        return .init(
            accountId: self.accountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Budgets.DescribeBudgetActionsForBudgetRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeBudgetActionsForBudgetRequest {
        return .init(
            accountId: self.accountId, 
            budgetName: self.budgetName, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Budgets.DescribeBudgetPerformanceHistoryRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeBudgetPerformanceHistoryRequest {
        return .init(
            accountId: self.accountId, 
            budgetName: self.budgetName, 
            maxResults: self.maxResults, 
            nextToken: token, 
            timePeriod: self.timePeriod
        )

    }
}

extension Budgets.DescribeBudgetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeBudgetsRequest {
        return .init(
            accountId: self.accountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Budgets.DescribeNotificationsForBudgetRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeNotificationsForBudgetRequest {
        return .init(
            accountId: self.accountId, 
            budgetName: self.budgetName, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Budgets.DescribeSubscribersForNotificationRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Budgets.DescribeSubscribersForNotificationRequest {
        return .init(
            accountId: self.accountId, 
            budgetName: self.budgetName, 
            maxResults: self.maxResults, 
            nextToken: token, 
            notification: self.notification
        )

    }
}


