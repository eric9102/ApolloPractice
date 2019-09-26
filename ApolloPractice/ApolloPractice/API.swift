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

public final class MeQuery: GraphQLQuery {
  /// query me {
  ///   me {
  ///     __typename
  ///     uid
  ///     nickName
  ///     wxName
  ///     wxAvatar
  ///   }
  /// }
  public let operationDefinition =
    "query me { me { __typename uid nickName wxName wxAvatar } }"

  public let operationName = "me"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("me", type: .object(Me.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
    }

    /// 当前用户信息
    public var me: Me? {
      get {
        return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("uid", type: .scalar(String.self)),
        GraphQLField("nickName", type: .scalar(String.self)),
        GraphQLField("wxName", type: .scalar(String.self)),
        GraphQLField("wxAvatar", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(uid: String? = nil, nickName: String? = nil, wxName: String? = nil, wxAvatar: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "uid": uid, "nickName": nickName, "wxName": wxName, "wxAvatar": wxAvatar])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// uid
      public var uid: String? {
        get {
          return resultMap["uid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "uid")
        }
      }

      /// 昵称
      public var nickName: String? {
        get {
          return resultMap["nickName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickName")
        }
      }

      /// 微信昵称
      public var wxName: String? {
        get {
          return resultMap["wxName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wxName")
        }
      }

      /// 微信头像
      public var wxAvatar: String? {
        get {
          return resultMap["wxAvatar"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wxAvatar")
        }
      }
    }
  }
}
