//  This file was automatically generated and should not be edited.

import Apollo

public final class HomeBannerQuery: GraphQLQuery {
  /// query homeBanner {
  ///   homeBanner {
  ///     __typename
  ///     name
  ///   }
  /// }
  public let operationDefinition =
    "query homeBanner { homeBanner { __typename name } }"

  public let operationName = "homeBanner"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("homeBanner", type: .list(.object(HomeBanner.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(homeBanner: [HomeBanner?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "homeBanner": homeBanner.flatMap { (value: [HomeBanner?]) -> [ResultMap?] in value.map { (value: HomeBanner?) -> ResultMap? in value.flatMap { (value: HomeBanner) -> ResultMap in value.resultMap } } }])
    }

    /// 首页Banner列表
    public var homeBanner: [HomeBanner?]? {
      get {
        return (resultMap["homeBanner"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HomeBanner?] in value.map { (value: ResultMap?) -> HomeBanner? in value.flatMap { (value: ResultMap) -> HomeBanner in HomeBanner(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [HomeBanner?]) -> [ResultMap?] in value.map { (value: HomeBanner?) -> ResultMap? in value.flatMap { (value: HomeBanner) -> ResultMap in value.resultMap } } }, forKey: "homeBanner")
      }
    }

    public struct HomeBanner: GraphQLSelectionSet {
      public static let possibleTypes = ["Banner"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Banner", "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 名称
      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}
