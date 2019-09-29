//  This file was automatically generated and should not be edited.

import Apollo

/// 二维码类型
public enum QRCodeType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 小程序码
  case weapp
  /// 页面
  case web
  /// 微信群
  case wechatGroup
  /// 关注公众号
  case subscribe
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "WEAPP": self = .weapp
      case "WEB": self = .web
      case "WECHAT_GROUP": self = .wechatGroup
      case "SUBSCRIBE": self = .subscribe
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .weapp: return "WEAPP"
      case .web: return "WEB"
      case .wechatGroup: return "WECHAT_GROUP"
      case .subscribe: return "SUBSCRIBE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: QRCodeType, rhs: QRCodeType) -> Bool {
    switch (lhs, rhs) {
      case (.weapp, .weapp): return true
      case (.web, .web): return true
      case (.wechatGroup, .wechatGroup): return true
      case (.subscribe, .subscribe): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [QRCodeType] {
    return [
      .weapp,
      .web,
      .wechatGroup,
      .subscribe,
    ]
  }
}

/// 促销活动时间段状态
public enum PromotionPeriodStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 未开始
  case preparing
  /// 进行中
  case selling
  /// 已结束
  case expired
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "PREPARING": self = .preparing
      case "SELLING": self = .selling
      case "EXPIRED": self = .expired
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .preparing: return "PREPARING"
      case .selling: return "SELLING"
      case .expired: return "EXPIRED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PromotionPeriodStatus, rhs: PromotionPeriodStatus) -> Bool {
    switch (lhs, rhs) {
      case (.preparing, .preparing): return true
      case (.selling, .selling): return true
      case (.expired, .expired): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PromotionPeriodStatus] {
    return [
      .preparing,
      .selling,
      .expired,
    ]
  }
}

/// 促销活动状态
public enum PromotionStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 未开始
  case preparing
  /// 进行中
  case selling
  /// 已售罄
  case soldOut
  /// 已结束
  case expired
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "PREPARING": self = .preparing
      case "SELLING": self = .selling
      case "SOLD_OUT": self = .soldOut
      case "EXPIRED": self = .expired
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .preparing: return "PREPARING"
      case .selling: return "SELLING"
      case .soldOut: return "SOLD_OUT"
      case .expired: return "EXPIRED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PromotionStatus, rhs: PromotionStatus) -> Bool {
    switch (lhs, rhs) {
      case (.preparing, .preparing): return true
      case (.selling, .selling): return true
      case (.soldOut, .soldOut): return true
      case (.expired, .expired): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PromotionStatus] {
    return [
      .preparing,
      .selling,
      .soldOut,
      .expired,
    ]
  }
}

/// 课程类型
public enum CourseType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 音频
  case audio
  /// 视频
  case video
  /// 直播
  case live
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "AUDIO": self = .audio
      case "VIDEO": self = .video
      case "LIVE": self = .live
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .audio: return "AUDIO"
      case .video: return "VIDEO"
      case .live: return "LIVE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CourseType, rhs: CourseType) -> Bool {
    switch (lhs, rhs) {
      case (.audio, .audio): return true
      case (.video, .video): return true
      case (.live, .live): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CourseType] {
    return [
      .audio,
      .video,
      .live,
    ]
  }
}

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

public final class ItemQuery: GraphQLQuery {
  /// query item($id: Int, $isbn: String) {
  ///   userGood(id: $id, isbn: $isbn) {
  ///     __typename
  ///     isFavorite
  ///     isLiked
  ///     studyProgress {
  ///       __typename
  ///       percent
  ///       isEnd
  ///       chapterName
  ///       chapterId
  ///       chapterStudyProgressList {
  ///         __typename
  ///         percent
  ///         chapterId
  ///       }
  ///     }
  ///     good {
  ///       __typename
  ///       id
  ///       name
  ///       goodsNum
  ///       image
  ///       desc
  ///       descType
  ///       descImage
  ///       bookAuthor
  ///       bookTranslator
  ///       recommendation
  ///       bgColor
  ///       isFontDark
  ///       type
  ///       typeName
  ///       image
  ///       ownerSum
  ///       likeCount
  ///       resId
  ///       isDoubanScoreShow
  ///       bookResources {
  ///         __typename
  ///         briefAudio {
  ///           __typename
  ///           id
  ///           name
  ///           desc
  ///           content
  ///           url
  ///           duration
  ///           isFree
  ///           isLast
  ///         }
  ///       }
  ///       poster {
  ///         __typename
  ///         image
  ///       }
  ///       QRCodes {
  ///         __typename
  ///         type
  ///         image
  ///       }
  ///       book {
  ///         __typename
  ///         doubanScore
  ///       }
  ///       recommendSection {
  ///         __typename
  ///         type
  ///         name
  ///         id
  ///       }
  ///       staredComments(first: 3) {
  ///         __typename
  ///         id
  ///         user {
  ///           __typename
  ///           nickname
  ///           avatar
  ///         }
  ///         createTime
  ///         isLiked
  ///         likeCount
  ///         content
  ///         reply {
  ///           __typename
  ///           content
  ///         }
  ///       }
  ///       preferUserGoods(first: 10, offset: 0) {
  ///         __typename
  ///         hasRight
  ///         hasPackageRight
  ///         good {
  ///           __typename
  ///           hasFree
  ///           isFree
  ///           id
  ///           goodsNum
  ///           typeName
  ///           desc
  ///           descImage
  ///           descType
  ///           displayTime
  ///           name
  ///           image
  ///           squareImage
  ///           crossImage
  ///           type
  ///           resId
  ///           ownerSum
  ///           subName
  ///           bookAuthor
  ///           resAuthor
  ///           isOnlyMainland
  ///           recommendation
  ///           packageDuration {
  ///             __typename
  ///             id
  ///             package {
  ///               __typename
  ///               isContainsEntity
  ///               type
  ///               id
  ///             }
  ///           }
  ///           book {
  ///             __typename
  ///             id
  ///             cover
  ///           }
  ///           videoBook {
  ///             __typename
  ///             id
  ///             name
  ///             image
  ///             desc
  ///             duration
  ///           }
  ///           price {
  ///             __typename
  ///             id
  ///             selling
  ///             userSelling
  ///             normal
  ///             isSale
  ///             userSellingWithRequiredExtraGoods
  ///             promotionPrice
  ///             saleLeftSeconds
  ///             promotionPeriod {
  ///               __typename
  ///               startTime
  ///               endTime
  ///               status
  ///               id
  ///               promotion {
  ///                 __typename
  ///                 id
  ///                 isTimeLimit
  ///                 periodStartTime
  ///                 periodEndTime
  ///                 soldQuantity
  ///                 limitQuantity
  ///                 status
  ///               }
  ///             }
  ///           }
  ///           relatedPeople {
  ///             __typename
  ///             id
  ///             name
  ///             image
  ///             intro
  ///           }
  ///           course {
  ///             __typename
  ///             author
  ///             isFinished
  ///             endDate
  ///             type
  ///             chapters {
  ///               __typename
  ///               hasDesc
  ///               id
  ///               name
  ///               url
  ///               duration
  ///               isFree
  ///               isLast
  ///             }
  ///           }
  ///           summaryAudioBook {
  ///             __typename
  ///             name
  ///             cover
  ///             duration
  ///             url
  ///             id
  ///           }
  ///           bookResources {
  ///             __typename
  ///             briefAudio {
  ///               __typename
  ///               id
  ///               name
  ///               desc
  ///               content
  ///               url
  ///               duration
  ///               isFree
  ///               isLast
  ///             }
  ///           }
  ///           summaryBook {
  ///             __typename
  ///             content
  ///             chapterList {
  ///               __typename
  ///               id
  ///               name
  ///               epubPath
  ///               num
  ///               isLast
  ///             }
  ///           }
  ///           bookClub {
  ///             __typename
  ///             id
  ///             name
  ///             author
  ///             desc
  ///             content
  ///             cover
  ///             url
  ///             duration
  ///           }
  ///           influencerGuideReading {
  ///             __typename
  ///             headerImage
  ///             wechatGroupQrcode
  ///             isFinished
  ///             endTime
  ///             albums {
  ///               __typename
  ///               id
  ///               name
  ///               image
  ///               sections {
  ///                 __typename
  ///                 id
  ///                 name
  ///                 audios {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   url
  ///                   duration
  ///                   isFree
  ///                   isLast
  ///                 }
  ///               }
  ///             }
  ///             lecturers {
  ///               __typename
  ///               name
  ///               intro
  ///               image
  ///             }
  ///           }
  ///           entity {
  ///             __typename
  ///             stock
  ///           }
  ///           audioBook {
  ///             __typename
  ///             isFinished
  ///             endDate
  ///             audios {
  ///               __typename
  ///               id
  ///               name
  ///               url
  ///               duration
  ///               isFree
  ///               isLast
  ///             }
  ///           }
  ///           extraUserGoods {
  ///             __typename
  ///             id
  ///             isRequired
  ///             extraPrice
  ///             userGood {
  ///               __typename
  ///               hasRight
  ///               hasCoupon
  ///               obtainTime
  ///               obtainMode
  ///               hasPackageRight
  ///               isFavorite
  ///               studyProgress {
  ///                 __typename
  ///                 chapterId
  ///                 percent
  ///                 currentTime
  ///                 isEnd
  ///                 chapterName
  ///                 chapterStudyProgressList {
  ///                   __typename
  ///                   chapterId
  ///                   percent
  ///                   currentTime
  ///                 }
  ///               }
  ///               pageInfo {
  ///                 __typename
  ///                 totalCount
  ///                 hasNext
  ///               }
  ///               good {
  ///                 __typename
  ///                 hasFree
  ///                 isFree
  ///                 id
  ///                 goodsNum
  ///                 typeName
  ///                 desc
  ///                 descImage
  ///                 descType
  ///                 displayTime
  ///                 name
  ///                 image
  ///                 crossImage
  ///                 squareImage
  ///                 type
  ///                 resId
  ///                 ownerSum
  ///                 subName
  ///                 bookAuthor
  ///                 resAuthor
  ///                 isOnlyMainland
  ///                 recommendation
  ///                 book {
  ///                   __typename
  ///                   id
  ///                   cover
  ///                 }
  ///                 videoBook {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   image
  ///                   desc
  ///                   duration
  ///                 }
  ///                 relatedPeople {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   image
  ///                   intro
  ///                 }
  ///                 price {
  ///                   __typename
  ///                   id
  ///                   selling
  ///                   userSelling
  ///                   normal
  ///                   isSale
  ///                   userSellingWithRequiredExtraGoods
  ///                   promotionPrice
  ///                   saleLeftSeconds
  ///                   promotionPeriod {
  ///                     __typename
  ///                     startTime
  ///                     endTime
  ///                     status
  ///                     id
  ///                     promotion {
  ///                       __typename
  ///                       id
  ///                       isTimeLimit
  ///                       periodStartTime
  ///                       periodEndTime
  ///                       soldQuantity
  ///                       limitQuantity
  ///                       status
  ///                     }
  ///                   }
  ///                 }
  ///                 course {
  ///                   __typename
  ///                   author
  ///                   isFinished
  ///                   endDate
  ///                   type
  ///                   chapters {
  ///                     __typename
  ///                     hasDesc
  ///                     id
  ///                     name
  ///                     url
  ///                     duration
  ///                     isFree
  ///                     isLast
  ///                   }
  ///                 }
  ///                 entity {
  ///                   __typename
  ///                   stock
  ///                 }
  ///                 summaryAudioBook {
  ///                   __typename
  ///                   name
  ///                   cover
  ///                   duration
  ///                   url
  ///                   id
  ///                 }
  ///                 bookResources {
  ///                   __typename
  ///                   briefAudio {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     desc
  ///                     content
  ///                     url
  ///                     duration
  ///                     isFree
  ///                     isLast
  ///                   }
  ///                 }
  ///                 summaryBook {
  ///                   __typename
  ///                   content
  ///                   chapterList {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     epubPath
  ///                     num
  ///                     isLast
  ///                   }
  ///                 }
  ///                 bookClub {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   author
  ///                   desc
  ///                   content
  ///                   cover
  ///                   url
  ///                   duration
  ///                 }
  ///                 influencerGuideReading {
  ///                   __typename
  ///                   headerImage
  ///                   wechatGroupQrcode
  ///                   isFinished
  ///                   endTime
  ///                   albums {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     image
  ///                     sections {
  ///                       __typename
  ///                       id
  ///                       name
  ///                       audios {
  ///                         __typename
  ///                         id
  ///                         name
  ///                         url
  ///                         duration
  ///                         isFree
  ///                         isLast
  ///                       }
  ///                     }
  ///                   }
  ///                   lecturers {
  ///                     __typename
  ///                     name
  ///                     intro
  ///                     image
  ///                   }
  ///                 }
  ///                 audioBook {
  ///                   __typename
  ///                   isFinished
  ///                   endDate
  ///                   audios {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     url
  ///                     duration
  ///                     isFree
  ///                     isLast
  ///                   }
  ///                 }
  ///                 liveReplay {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   image
  ///                   videoUrl
  ///                   desc
  ///                   content
  ///                   lecturer
  ///                   duration
  ///                 }
  ///               }
  ///             }
  ///           }
  ///         }
  ///       }
  ///       recommendUserGoodsByGood {
  ///         __typename
  ///         hasRight
  ///         hasPackageRight
  ///         studyProgress {
  ///           __typename
  ///           chapterId
  ///           percent
  ///           currentTime
  ///           isEnd
  ///           chapterName
  ///           chapterStudyProgressList {
  ///             __typename
  ///             chapterId
  ///             percent
  ///             currentTime
  ///           }
  ///         }
  ///         good {
  ///           __typename
  ///           hasFree
  ///           isFree
  ///           id
  ///           goodsNum
  ///           typeName
  ///           desc
  ///           descImage
  ///           descType
  ///           displayTime
  ///           name
  ///           image
  ///           squareImage
  ///           crossImage
  ///           type
  ///           resId
  ///           ownerSum
  ///           subName
  ///           bookAuthor
  ///           resAuthor
  ///           isOnlyMainland
  ///           recommendation
  ///           packageDuration {
  ///             __typename
  ///             id
  ///             package {
  ///               __typename
  ///               isContainsEntity
  ///               type
  ///               id
  ///             }
  ///           }
  ///           book {
  ///             __typename
  ///             id
  ///             cover
  ///           }
  ///           videoBook {
  ///             __typename
  ///             id
  ///             name
  ///             image
  ///             desc
  ///             duration
  ///           }
  ///           price {
  ///             __typename
  ///             id
  ///             selling
  ///             userSelling
  ///             normal
  ///             isSale
  ///             userSellingWithRequiredExtraGoods
  ///             promotionPrice
  ///             saleLeftSeconds
  ///             promotionPeriod {
  ///               __typename
  ///               startTime
  ///               endTime
  ///               status
  ///               id
  ///               promotion {
  ///                 __typename
  ///                 id
  ///                 isTimeLimit
  ///                 periodStartTime
  ///                 periodEndTime
  ///                 soldQuantity
  ///                 limitQuantity
  ///                 status
  ///               }
  ///             }
  ///           }
  ///           relatedPeople {
  ///             __typename
  ///             id
  ///             name
  ///             image
  ///             intro
  ///           }
  ///           course {
  ///             __typename
  ///             author
  ///             isFinished
  ///             endDate
  ///             type
  ///             chapters {
  ///               __typename
  ///               hasDesc
  ///               id
  ///               name
  ///               url
  ///               duration
  ///               isFree
  ///               isLast
  ///             }
  ///           }
  ///           summaryAudioBook {
  ///             __typename
  ///             name
  ///             cover
  ///             duration
  ///             url
  ///             id
  ///           }
  ///           bookResources {
  ///             __typename
  ///             briefAudio {
  ///               __typename
  ///               id
  ///               name
  ///               desc
  ///               content
  ///               url
  ///               duration
  ///               isFree
  ///               isLast
  ///             }
  ///           }
  ///           summaryBook {
  ///             __typename
  ///             content
  ///             chapterList {
  ///               __typename
  ///               id
  ///               name
  ///               epubPath
  ///               num
  ///               isLast
  ///             }
  ///           }
  ///           bookClub {
  ///             __typename
  ///             id
  ///             name
  ///             author
  ///             desc
  ///             content
  ///             cover
  ///             url
  ///             duration
  ///           }
  ///           influencerGuideReading {
  ///             __typename
  ///             headerImage
  ///             wechatGroupQrcode
  ///             isFinished
  ///             endTime
  ///             albums {
  ///               __typename
  ///               id
  ///               name
  ///               image
  ///               sections {
  ///                 __typename
  ///                 id
  ///                 name
  ///                 audios {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   url
  ///                   duration
  ///                   isFree
  ///                   isLast
  ///                 }
  ///               }
  ///             }
  ///             lecturers {
  ///               __typename
  ///               name
  ///               intro
  ///               image
  ///             }
  ///           }
  ///           entity {
  ///             __typename
  ///             stock
  ///           }
  ///           audioBook {
  ///             __typename
  ///             isFinished
  ///             endDate
  ///             audios {
  ///               __typename
  ///               id
  ///               name
  ///               url
  ///               duration
  ///               isFree
  ///               isLast
  ///             }
  ///           }
  ///           extraUserGoods {
  ///             __typename
  ///             id
  ///             isRequired
  ///             extraPrice
  ///             userGood {
  ///               __typename
  ///               hasRight
  ///               hasCoupon
  ///               obtainTime
  ///               obtainMode
  ///               hasPackageRight
  ///               isFavorite
  ///               studyProgress {
  ///                 __typename
  ///                 chapterId
  ///                 percent
  ///                 currentTime
  ///                 isEnd
  ///                 chapterName
  ///                 chapterStudyProgressList {
  ///                   __typename
  ///                   chapterId
  ///                   percent
  ///                   currentTime
  ///                 }
  ///               }
  ///               pageInfo {
  ///                 __typename
  ///                 totalCount
  ///                 hasNext
  ///               }
  ///               good {
  ///                 __typename
  ///                 hasFree
  ///                 isFree
  ///                 id
  ///                 goodsNum
  ///                 typeName
  ///                 desc
  ///                 descImage
  ///                 descType
  ///                 displayTime
  ///                 name
  ///                 image
  ///                 crossImage
  ///                 squareImage
  ///                 type
  ///                 resId
  ///                 ownerSum
  ///                 subName
  ///                 bookAuthor
  ///                 resAuthor
  ///                 isOnlyMainland
  ///                 recommendation
  ///                 book {
  ///                   __typename
  ///                   id
  ///                   cover
  ///                 }
  ///                 videoBook {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   image
  ///                   desc
  ///                   duration
  ///                 }
  ///                 relatedPeople {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   image
  ///                   intro
  ///                 }
  ///                 price {
  ///                   __typename
  ///                   id
  ///                   selling
  ///                   userSelling
  ///                   normal
  ///                   isSale
  ///                   userSellingWithRequiredExtraGoods
  ///                   promotionPrice
  ///                   saleLeftSeconds
  ///                   promotionPeriod {
  ///                     __typename
  ///                     startTime
  ///                     endTime
  ///                     status
  ///                     id
  ///                     promotion {
  ///                       __typename
  ///                       id
  ///                       isTimeLimit
  ///                       periodStartTime
  ///                       periodEndTime
  ///                       soldQuantity
  ///                       limitQuantity
  ///                       status
  ///                     }
  ///                   }
  ///                 }
  ///                 course {
  ///                   __typename
  ///                   author
  ///                   isFinished
  ///                   endDate
  ///                   type
  ///                   chapters {
  ///                     __typename
  ///                     hasDesc
  ///                     id
  ///                     name
  ///                     url
  ///                     duration
  ///                     isFree
  ///                     isLast
  ///                   }
  ///                 }
  ///                 entity {
  ///                   __typename
  ///                   stock
  ///                 }
  ///                 summaryAudioBook {
  ///                   __typename
  ///                   name
  ///                   cover
  ///                   duration
  ///                   url
  ///                   id
  ///                 }
  ///                 bookResources {
  ///                   __typename
  ///                   briefAudio {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     desc
  ///                     content
  ///                     url
  ///                     duration
  ///                     isFree
  ///                     isLast
  ///                   }
  ///                 }
  ///                 summaryBook {
  ///                   __typename
  ///                   content
  ///                   chapterList {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     epubPath
  ///                     num
  ///                     isLast
  ///                   }
  ///                 }
  ///                 bookClub {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   author
  ///                   desc
  ///                   content
  ///                   cover
  ///                   url
  ///                   duration
  ///                 }
  ///                 influencerGuideReading {
  ///                   __typename
  ///                   headerImage
  ///                   wechatGroupQrcode
  ///                   isFinished
  ///                   endTime
  ///                   albums {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     image
  ///                     sections {
  ///                       __typename
  ///                       id
  ///                       name
  ///                       audios {
  ///                         __typename
  ///                         id
  ///                         name
  ///                         url
  ///                         duration
  ///                         isFree
  ///                         isLast
  ///                       }
  ///                     }
  ///                   }
  ///                   lecturers {
  ///                     __typename
  ///                     name
  ///                     intro
  ///                     image
  ///                   }
  ///                 }
  ///                 audioBook {
  ///                   __typename
  ///                   isFinished
  ///                   endDate
  ///                   audios {
  ///                     __typename
  ///                     id
  ///                     name
  ///                     url
  ///                     duration
  ///                     isFree
  ///                     isLast
  ///                   }
  ///                 }
  ///                 liveReplay {
  ///                   __typename
  ///                   id
  ///                   name
  ///                   image
  ///                   videoUrl
  ///                   desc
  ///                   content
  ///                   lecturer
  ///                   duration
  ///                 }
  ///               }
  ///             }
  ///           }
  ///         }
  ///       }
  ///     }
  ///   }
  /// }
  public let operationDefinition =
    "query item($id: Int, $isbn: String) { userGood(id: $id, isbn: $isbn) { __typename isFavorite isLiked studyProgress { __typename percent isEnd chapterName chapterId chapterStudyProgressList { __typename percent chapterId } } good { __typename id name goodsNum image desc descType descImage bookAuthor bookTranslator recommendation bgColor isFontDark type typeName image ownerSum likeCount resId isDoubanScoreShow bookResources { __typename briefAudio { __typename id name desc content url duration isFree isLast } } poster { __typename image } QRCodes { __typename type image } book { __typename doubanScore } recommendSection { __typename type name id } staredComments(first: 3) { __typename id user { __typename nickname avatar } createTime isLiked likeCount content reply { __typename content } } preferUserGoods(first: 10, offset: 0) { __typename hasRight hasPackageRight good { __typename hasFree isFree id goodsNum typeName desc descImage descType displayTime name image squareImage crossImage type resId ownerSum subName bookAuthor resAuthor isOnlyMainland recommendation packageDuration { __typename id package { __typename isContainsEntity type id } } book { __typename id cover } videoBook { __typename id name image desc duration } price { __typename id selling userSelling normal isSale userSellingWithRequiredExtraGoods promotionPrice saleLeftSeconds promotionPeriod { __typename startTime endTime status id promotion { __typename id isTimeLimit periodStartTime periodEndTime soldQuantity limitQuantity status } } } relatedPeople { __typename id name image intro } course { __typename author isFinished endDate type chapters { __typename hasDesc id name url duration isFree isLast } } summaryAudioBook { __typename name cover duration url id } bookResources { __typename briefAudio { __typename id name desc content url duration isFree isLast } } summaryBook { __typename content chapterList { __typename id name epubPath num isLast } } bookClub { __typename id name author desc content cover url duration } influencerGuideReading { __typename headerImage wechatGroupQrcode isFinished endTime albums { __typename id name image sections { __typename id name audios { __typename id name url duration isFree isLast } } } lecturers { __typename name intro image } } entity { __typename stock } audioBook { __typename isFinished endDate audios { __typename id name url duration isFree isLast } } extraUserGoods { __typename id isRequired extraPrice userGood { __typename hasRight hasCoupon obtainTime obtainMode hasPackageRight isFavorite studyProgress { __typename chapterId percent currentTime isEnd chapterName chapterStudyProgressList { __typename chapterId percent currentTime } } pageInfo { __typename totalCount hasNext } good { __typename hasFree isFree id goodsNum typeName desc descImage descType displayTime name image crossImage squareImage type resId ownerSum subName bookAuthor resAuthor isOnlyMainland recommendation book { __typename id cover } videoBook { __typename id name image desc duration } relatedPeople { __typename id name image intro } price { __typename id selling userSelling normal isSale userSellingWithRequiredExtraGoods promotionPrice saleLeftSeconds promotionPeriod { __typename startTime endTime status id promotion { __typename id isTimeLimit periodStartTime periodEndTime soldQuantity limitQuantity status } } } course { __typename author isFinished endDate type chapters { __typename hasDesc id name url duration isFree isLast } } entity { __typename stock } summaryAudioBook { __typename name cover duration url id } bookResources { __typename briefAudio { __typename id name desc content url duration isFree isLast } } summaryBook { __typename content chapterList { __typename id name epubPath num isLast } } bookClub { __typename id name author desc content cover url duration } influencerGuideReading { __typename headerImage wechatGroupQrcode isFinished endTime albums { __typename id name image sections { __typename id name audios { __typename id name url duration isFree isLast } } } lecturers { __typename name intro image } } audioBook { __typename isFinished endDate audios { __typename id name url duration isFree isLast } } liveReplay { __typename id name image videoUrl desc content lecturer duration } } } } } } recommendUserGoodsByGood { __typename hasRight hasPackageRight studyProgress { __typename chapterId percent currentTime isEnd chapterName chapterStudyProgressList { __typename chapterId percent currentTime } } good { __typename hasFree isFree id goodsNum typeName desc descImage descType displayTime name image squareImage crossImage type resId ownerSum subName bookAuthor resAuthor isOnlyMainland recommendation packageDuration { __typename id package { __typename isContainsEntity type id } } book { __typename id cover } videoBook { __typename id name image desc duration } price { __typename id selling userSelling normal isSale userSellingWithRequiredExtraGoods promotionPrice saleLeftSeconds promotionPeriod { __typename startTime endTime status id promotion { __typename id isTimeLimit periodStartTime periodEndTime soldQuantity limitQuantity status } } } relatedPeople { __typename id name image intro } course { __typename author isFinished endDate type chapters { __typename hasDesc id name url duration isFree isLast } } summaryAudioBook { __typename name cover duration url id } bookResources { __typename briefAudio { __typename id name desc content url duration isFree isLast } } summaryBook { __typename content chapterList { __typename id name epubPath num isLast } } bookClub { __typename id name author desc content cover url duration } influencerGuideReading { __typename headerImage wechatGroupQrcode isFinished endTime albums { __typename id name image sections { __typename id name audios { __typename id name url duration isFree isLast } } } lecturers { __typename name intro image } } entity { __typename stock } audioBook { __typename isFinished endDate audios { __typename id name url duration isFree isLast } } extraUserGoods { __typename id isRequired extraPrice userGood { __typename hasRight hasCoupon obtainTime obtainMode hasPackageRight isFavorite studyProgress { __typename chapterId percent currentTime isEnd chapterName chapterStudyProgressList { __typename chapterId percent currentTime } } pageInfo { __typename totalCount hasNext } good { __typename hasFree isFree id goodsNum typeName desc descImage descType displayTime name image crossImage squareImage type resId ownerSum subName bookAuthor resAuthor isOnlyMainland recommendation book { __typename id cover } videoBook { __typename id name image desc duration } relatedPeople { __typename id name image intro } price { __typename id selling userSelling normal isSale userSellingWithRequiredExtraGoods promotionPrice saleLeftSeconds promotionPeriod { __typename startTime endTime status id promotion { __typename id isTimeLimit periodStartTime periodEndTime soldQuantity limitQuantity status } } } course { __typename author isFinished endDate type chapters { __typename hasDesc id name url duration isFree isLast } } entity { __typename stock } summaryAudioBook { __typename name cover duration url id } bookResources { __typename briefAudio { __typename id name desc content url duration isFree isLast } } summaryBook { __typename content chapterList { __typename id name epubPath num isLast } } bookClub { __typename id name author desc content cover url duration } influencerGuideReading { __typename headerImage wechatGroupQrcode isFinished endTime albums { __typename id name image sections { __typename id name audios { __typename id name url duration isFree isLast } } } lecturers { __typename name intro image } } audioBook { __typename isFinished endDate audios { __typename id name url duration isFree isLast } } liveReplay { __typename id name image videoUrl desc content lecturer duration } } } } } } } } }"

  public let operationName = "item"

  public var id: Int?
  public var isbn: String?

  public init(id: Int? = nil, isbn: String? = nil) {
    self.id = id
    self.isbn = isbn
  }

  public var variables: GraphQLMap? {
    return ["id": id, "isbn": isbn]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("userGood", arguments: ["id": GraphQLVariable("id"), "isbn": GraphQLVariable("isbn")], type: .object(UserGood.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(userGood: UserGood? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "userGood": userGood.flatMap { (value: UserGood) -> ResultMap in value.resultMap }])
    }

    /// 用户和商品之间的信息
    public var userGood: UserGood? {
      get {
        return (resultMap["userGood"] as? ResultMap).flatMap { UserGood(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "userGood")
      }
    }

    public struct UserGood: GraphQLSelectionSet {
      public static let possibleTypes = ["UserGood"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("isFavorite", type: .scalar(Bool.self)),
        GraphQLField("isLiked", type: .scalar(Bool.self)),
        GraphQLField("studyProgress", type: .object(StudyProgress.selections)),
        GraphQLField("good", type: .object(Good.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(isFavorite: Bool? = nil, isLiked: Bool? = nil, studyProgress: StudyProgress? = nil, good: Good? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserGood", "isFavorite": isFavorite, "isLiked": isLiked, "studyProgress": studyProgress.flatMap { (value: StudyProgress) -> ResultMap in value.resultMap }, "good": good.flatMap { (value: Good) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 是否收藏
      public var isFavorite: Bool? {
        get {
          return resultMap["isFavorite"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isFavorite")
        }
      }

      /// 是否点赞
      public var isLiked: Bool? {
        get {
          return resultMap["isLiked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isLiked")
        }
      }

      /// 学习进度信息
      public var studyProgress: StudyProgress? {
        get {
          return (resultMap["studyProgress"] as? ResultMap).flatMap { StudyProgress(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "studyProgress")
        }
      }

      /// 商品信息
      public var good: Good? {
        get {
          return (resultMap["good"] as? ResultMap).flatMap { Good(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "good")
        }
      }

      public struct StudyProgress: GraphQLSelectionSet {
        public static let possibleTypes = ["StudyProgress"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("percent", type: .scalar(Int.self)),
          GraphQLField("isEnd", type: .scalar(Bool.self)),
          GraphQLField("chapterName", type: .scalar(String.self)),
          GraphQLField("chapterId", type: .scalar(Int.self)),
          GraphQLField("chapterStudyProgressList", type: .list(.object(ChapterStudyProgressList.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(percent: Int? = nil, isEnd: Bool? = nil, chapterName: String? = nil, chapterId: Int? = nil, chapterStudyProgressList: [ChapterStudyProgressList?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "StudyProgress", "percent": percent, "isEnd": isEnd, "chapterName": chapterName, "chapterId": chapterId, "chapterStudyProgressList": chapterStudyProgressList.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// 百分比进度（0-10000整数）
        public var percent: Int? {
          get {
            return resultMap["percent"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "percent")
          }
        }

        /// 是否已学到最后一章（和数据库isEnd不一样）
        public var isEnd: Bool? {
          get {
            return resultMap["isEnd"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isEnd")
          }
        }

        /// 章节名称
        public var chapterName: String? {
          get {
            return resultMap["chapterName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "chapterName")
          }
        }

        /// 章节ID
        public var chapterId: Int? {
          get {
            return resultMap["chapterId"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "chapterId")
          }
        }

        /// 章节学习进度
        public var chapterStudyProgressList: [ChapterStudyProgressList?]? {
          get {
            return (resultMap["chapterStudyProgressList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterStudyProgressList?] in value.map { (value: ResultMap?) -> ChapterStudyProgressList? in value.flatMap { (value: ResultMap) -> ChapterStudyProgressList in ChapterStudyProgressList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }, forKey: "chapterStudyProgressList")
          }
        }

        public struct ChapterStudyProgressList: GraphQLSelectionSet {
          public static let possibleTypes = ["ChapterStudyProgress"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("percent", type: .scalar(Int.self)),
            GraphQLField("chapterId", type: .scalar(Int.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(percent: Int? = nil, chapterId: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "ChapterStudyProgress", "percent": percent, "chapterId": chapterId])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 百分比进度（0-10000整数）
          public var percent: Int? {
            get {
              return resultMap["percent"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "percent")
            }
          }

          /// 章节ID
          public var chapterId: Int? {
            get {
              return resultMap["chapterId"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "chapterId")
            }
          }
        }
      }

      public struct Good: GraphQLSelectionSet {
        public static let possibleTypes = ["Good"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(Int.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("goodsNum", type: .scalar(String.self)),
          GraphQLField("image", type: .scalar(String.self)),
          GraphQLField("desc", type: .scalar(String.self)),
          GraphQLField("descType", type: .scalar(Int.self)),
          GraphQLField("descImage", type: .scalar(String.self)),
          GraphQLField("bookAuthor", type: .scalar(String.self)),
          GraphQLField("bookTranslator", type: .scalar(String.self)),
          GraphQLField("recommendation", type: .scalar(String.self)),
          GraphQLField("bgColor", type: .scalar(String.self)),
          GraphQLField("isFontDark", type: .scalar(Bool.self)),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("typeName", type: .scalar(String.self)),
          GraphQLField("image", type: .scalar(String.self)),
          GraphQLField("ownerSum", type: .scalar(Int.self)),
          GraphQLField("likeCount", type: .scalar(Int.self)),
          GraphQLField("resId", type: .scalar(Int.self)),
          GraphQLField("isDoubanScoreShow", type: .scalar(Bool.self)),
          GraphQLField("bookResources", type: .object(BookResource.selections)),
          GraphQLField("poster", type: .object(Poster.selections)),
          GraphQLField("QRCodes", type: .list(.object(QrCode.selections))),
          GraphQLField("book", type: .object(Book.selections)),
          GraphQLField("recommendSection", type: .object(RecommendSection.selections)),
          GraphQLField("staredComments", arguments: ["first": 3], type: .list(.object(StaredComment.selections))),
          GraphQLField("preferUserGoods", arguments: ["first": 10, "offset": 0], type: .list(.object(PreferUserGood.selections))),
          GraphQLField("recommendUserGoodsByGood", type: .list(.object(RecommendUserGoodsByGood.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int? = nil, name: String? = nil, goodsNum: String? = nil, image: String? = nil, desc: String? = nil, descType: Int? = nil, descImage: String? = nil, bookAuthor: String? = nil, bookTranslator: String? = nil, recommendation: String? = nil, bgColor: String? = nil, isFontDark: Bool? = nil, type: String? = nil, typeName: String? = nil, ownerSum: Int? = nil, likeCount: Int? = nil, resId: Int? = nil, isDoubanScoreShow: Bool? = nil, bookResources: BookResource? = nil, poster: Poster? = nil, qrCodes: [QrCode?]? = nil, book: Book? = nil, recommendSection: RecommendSection? = nil, staredComments: [StaredComment?]? = nil, preferUserGoods: [PreferUserGood?]? = nil, recommendUserGoodsByGood: [RecommendUserGoodsByGood?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "Good", "id": id, "name": name, "goodsNum": goodsNum, "image": image, "desc": desc, "descType": descType, "descImage": descImage, "bookAuthor": bookAuthor, "bookTranslator": bookTranslator, "recommendation": recommendation, "bgColor": bgColor, "isFontDark": isFontDark, "type": type, "typeName": typeName, "ownerSum": ownerSum, "likeCount": likeCount, "resId": resId, "isDoubanScoreShow": isDoubanScoreShow, "bookResources": bookResources.flatMap { (value: BookResource) -> ResultMap in value.resultMap }, "poster": poster.flatMap { (value: Poster) -> ResultMap in value.resultMap }, "QRCodes": qrCodes.flatMap { (value: [QrCode?]) -> [ResultMap?] in value.map { (value: QrCode?) -> ResultMap? in value.flatMap { (value: QrCode) -> ResultMap in value.resultMap } } }, "book": book.flatMap { (value: Book) -> ResultMap in value.resultMap }, "recommendSection": recommendSection.flatMap { (value: RecommendSection) -> ResultMap in value.resultMap }, "staredComments": staredComments.flatMap { (value: [StaredComment?]) -> [ResultMap?] in value.map { (value: StaredComment?) -> ResultMap? in value.flatMap { (value: StaredComment) -> ResultMap in value.resultMap } } }, "preferUserGoods": preferUserGoods.flatMap { (value: [PreferUserGood?]) -> [ResultMap?] in value.map { (value: PreferUserGood?) -> ResultMap? in value.flatMap { (value: PreferUserGood) -> ResultMap in value.resultMap } } }, "recommendUserGoodsByGood": recommendUserGoodsByGood.flatMap { (value: [RecommendUserGoodsByGood?]) -> [ResultMap?] in value.map { (value: RecommendUserGoodsByGood?) -> ResultMap? in value.flatMap { (value: RecommendUserGoodsByGood) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int? {
          get {
            return resultMap["id"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// 商品名称
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// 商品编号
        public var goodsNum: String? {
          get {
            return resultMap["goodsNum"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "goodsNum")
          }
        }

        /// 商品图片
        public var image: String? {
          get {
            return resultMap["image"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "image")
          }
        }

        /// 商品描述
        public var desc: String? {
          get {
            return resultMap["desc"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "desc")
          }
        }

        /// 商品描述类型 1展示文本简介 2展示图片简介（descImage）
        public var descType: Int? {
          get {
            return resultMap["descType"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "descType")
          }
        }

        /// 商品简介图片
        public var descImage: String? {
          get {
            return resultMap["descImage"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descImage")
          }
        }

        /// 图书作者
        public var bookAuthor: String? {
          get {
            return resultMap["bookAuthor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bookAuthor")
          }
        }

        /// 图书译者
        public var bookTranslator: String? {
          get {
            return resultMap["bookTranslator"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bookTranslator")
          }
        }

        /// 编辑荐语
        public var recommendation: String? {
          get {
            return resultMap["recommendation"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "recommendation")
          }
        }

        /// 背景色
        public var bgColor: String? {
          get {
            return resultMap["bgColor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bgColor")
          }
        }

        /// 是否使用暗色文字
        public var isFontDark: Bool? {
          get {
            return resultMap["isFontDark"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isFontDark")
          }
        }

        /// 商品类型
        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        /// 角标名称
        public var typeName: String? {
          get {
            return resultMap["typeName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "typeName")
          }
        }

        /// 订阅数
        public var ownerSum: Int? {
          get {
            return resultMap["ownerSum"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerSum")
          }
        }

        /// 点赞总数
        public var likeCount: Int? {
          get {
            return resultMap["likeCount"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "likeCount")
          }
        }

        /// 相关资源ID
        public var resId: Int? {
          get {
            return resultMap["resId"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "resId")
          }
        }

        /// 是否显示豆瓣评分
        public var isDoubanScoreShow: Bool? {
          get {
            return resultMap["isDoubanScoreShow"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isDoubanScoreShow")
          }
        }

        /// 编辑荐书相关资源 仅当商品类型为bookHomepage
        public var bookResources: BookResource? {
          get {
            return (resultMap["bookResources"] as? ResultMap).flatMap { BookResource(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "bookResources")
          }
        }

        /// 海报
        public var poster: Poster? {
          get {
            return (resultMap["poster"] as? ResultMap).flatMap { Poster(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "poster")
          }
        }

        /// 二维码
        public var qrCodes: [QrCode?]? {
          get {
            return (resultMap["QRCodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [QrCode?] in value.map { (value: ResultMap?) -> QrCode? in value.flatMap { (value: ResultMap) -> QrCode in QrCode(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [QrCode?]) -> [ResultMap?] in value.map { (value: QrCode?) -> ResultMap? in value.flatMap { (value: QrCode) -> ResultMap in value.resultMap } } }, forKey: "QRCodes")
          }
        }

        /// 图书详情
        public var book: Book? {
          get {
            return (resultMap["book"] as? ResultMap).flatMap { Book(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "book")
          }
        }

        /// 商品对应主栏目
        public var recommendSection: RecommendSection? {
          get {
            return (resultMap["recommendSection"] as? ResultMap).flatMap { RecommendSection(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "recommendSection")
          }
        }

        /// 精选评论
        public var staredComments: [StaredComment?]? {
          get {
            return (resultMap["staredComments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [StaredComment?] in value.map { (value: ResultMap?) -> StaredComment? in value.flatMap { (value: ResultMap) -> StaredComment in StaredComment(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [StaredComment?]) -> [ResultMap?] in value.map { (value: StaredComment?) -> ResultMap? in value.flatMap { (value: StaredComment) -> ResultMap in value.resultMap } } }, forKey: "staredComments")
          }
        }

        /// 猜你喜欢用户商品
        public var preferUserGoods: [PreferUserGood?]? {
          get {
            return (resultMap["preferUserGoods"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PreferUserGood?] in value.map { (value: ResultMap?) -> PreferUserGood? in value.flatMap { (value: ResultMap) -> PreferUserGood in PreferUserGood(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [PreferUserGood?]) -> [ResultMap?] in value.map { (value: PreferUserGood?) -> ResultMap? in value.flatMap { (value: PreferUserGood) -> ResultMap in value.resultMap } } }, forKey: "preferUserGoods")
          }
        }

        /// 人工推荐用户商品
        public var recommendUserGoodsByGood: [RecommendUserGoodsByGood?]? {
          get {
            return (resultMap["recommendUserGoodsByGood"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [RecommendUserGoodsByGood?] in value.map { (value: ResultMap?) -> RecommendUserGoodsByGood? in value.flatMap { (value: ResultMap) -> RecommendUserGoodsByGood in RecommendUserGoodsByGood(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [RecommendUserGoodsByGood?]) -> [ResultMap?] in value.map { (value: RecommendUserGoodsByGood?) -> ResultMap? in value.flatMap { (value: RecommendUserGoodsByGood) -> ResultMap in value.resultMap } } }, forKey: "recommendUserGoodsByGood")
          }
        }

        public struct BookResource: GraphQLSelectionSet {
          public static let possibleTypes = ["BookResources"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("briefAudio", type: .object(BriefAudio.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(briefAudio: BriefAudio? = nil) {
            self.init(unsafeResultMap: ["__typename": "BookResources", "briefAudio": briefAudio.flatMap { (value: BriefAudio) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 一分钟简介
          public var briefAudio: BriefAudio? {
            get {
              return (resultMap["briefAudio"] as? ResultMap).flatMap { BriefAudio(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "briefAudio")
            }
          }

          public struct BriefAudio: GraphQLSelectionSet {
            public static let possibleTypes = ["Audio"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(Int.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("desc", type: .scalar(String.self)),
              GraphQLField("content", type: .scalar(String.self)),
              GraphQLField("url", type: .scalar(String.self)),
              GraphQLField("duration", type: .scalar(Int.self)),
              GraphQLField("isFree", type: .scalar(Bool.self)),
              GraphQLField("isLast", type: .scalar(Bool.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int? = nil, name: String? = nil, desc: String? = nil, content: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "desc": desc, "content": content, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: Int? {
              get {
                return resultMap["id"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
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

            /// 描述
            public var desc: String? {
              get {
                return resultMap["desc"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "desc")
              }
            }

            /// 文字稿
            public var content: String? {
              get {
                return resultMap["content"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "content")
              }
            }

            /// 资源链接
            public var url: String? {
              get {
                return resultMap["url"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "url")
              }
            }

            /// 时长（秒）
            public var duration: Int? {
              get {
                return resultMap["duration"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "duration")
              }
            }

            /// 是否免费
            public var isFree: Bool? {
              get {
                return resultMap["isFree"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isFree")
              }
            }

            /// 是否最后一章节
            public var isLast: Bool? {
              get {
                return resultMap["isLast"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isLast")
              }
            }
          }
        }

        public struct Poster: GraphQLSelectionSet {
          public static let possibleTypes = ["Poster"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("image", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Poster", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 二维码图片
          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }

        public struct QrCode: GraphQLSelectionSet {
          public static let possibleTypes = ["QRCode"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("type", type: .scalar(QRCodeType.self)),
            GraphQLField("image", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: QRCodeType? = nil, image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "QRCode", "type": type, "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 类型
          public var type: QRCodeType? {
            get {
              return resultMap["type"] as? QRCodeType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// 二维码图片
          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }

        public struct Book: GraphQLSelectionSet {
          public static let possibleTypes = ["Book"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("doubanScore", type: .scalar(Int.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(doubanScore: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Book", "doubanScore": doubanScore])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 豆瓣评分
          public var doubanScore: Int? {
            get {
              return resultMap["doubanScore"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "doubanScore")
            }
          }
        }

        public struct RecommendSection: GraphQLSelectionSet {
          public static let possibleTypes = ["Section"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("id", type: .scalar(Int.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, name: String? = nil, id: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Section", "type": type, "name": name, "id": id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 类型
          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
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

          public var id: Int? {
            get {
              return resultMap["id"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }
        }

        public struct StaredComment: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("user", type: .object(User.selections)),
            GraphQLField("createTime", type: .scalar(Int.self)),
            GraphQLField("isLiked", type: .scalar(Bool.self)),
            GraphQLField("likeCount", type: .scalar(Int.self)),
            GraphQLField("content", type: .scalar(String.self)),
            GraphQLField("reply", type: .object(Reply.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int? = nil, user: User? = nil, createTime: Int? = nil, isLiked: Bool? = nil, likeCount: Int? = nil, content: String? = nil, reply: Reply? = nil) {
            self.init(unsafeResultMap: ["__typename": "Comment", "id": id, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "createTime": createTime, "isLiked": isLiked, "likeCount": likeCount, "content": content, "reply": reply.flatMap { (value: Reply) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return resultMap["id"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// 发布用户
          public var user: User? {
            get {
              return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "user")
            }
          }

          /// 发布时间
          public var createTime: Int? {
            get {
              return resultMap["createTime"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "createTime")
            }
          }

          /// 是否点赞
          public var isLiked: Bool? {
            get {
              return resultMap["isLiked"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isLiked")
            }
          }

          /// 点赞数
          public var likeCount: Int? {
            get {
              return resultMap["likeCount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "likeCount")
            }
          }

          /// 内容
          public var content: String? {
            get {
              return resultMap["content"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "content")
            }
          }

          /// 评论回复
          public var reply: Reply? {
            get {
              return (resultMap["reply"] as? ResultMap).flatMap { Reply(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "reply")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["UserBaseInfo"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("nickname", type: .scalar(String.self)),
              GraphQLField("avatar", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(nickname: String? = nil, avatar: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "UserBaseInfo", "nickname": nickname, "avatar": avatar])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 昵称
            public var nickname: String? {
              get {
                return resultMap["nickname"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "nickname")
              }
            }

            /// 头像
            public var avatar: String? {
              get {
                return resultMap["avatar"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "avatar")
              }
            }
          }

          public struct Reply: GraphQLSelectionSet {
            public static let possibleTypes = ["CommentReply"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("content", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(content: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "CommentReply", "content": content])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 内容
            public var content: String? {
              get {
                return resultMap["content"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "content")
              }
            }
          }
        }

        public struct PreferUserGood: GraphQLSelectionSet {
          public static let possibleTypes = ["UserGood"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hasRight", type: .scalar(Bool.self)),
            GraphQLField("hasPackageRight", type: .scalar(Bool.self)),
            GraphQLField("good", type: .object(Good.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(hasRight: Bool? = nil, hasPackageRight: Bool? = nil, good: Good? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserGood", "hasRight": hasRight, "hasPackageRight": hasPackageRight, "good": good.flatMap { (value: Good) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 是否有权限
          public var hasRight: Bool? {
            get {
              return resultMap["hasRight"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasRight")
            }
          }

          /// 是否有畅享权限，仅query userGood时返回
          public var hasPackageRight: Bool? {
            get {
              return resultMap["hasPackageRight"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasPackageRight")
            }
          }

          /// 商品信息
          public var good: Good? {
            get {
              return (resultMap["good"] as? ResultMap).flatMap { Good(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "good")
            }
          }

          public struct Good: GraphQLSelectionSet {
            public static let possibleTypes = ["Good"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("hasFree", type: .scalar(Bool.self)),
              GraphQLField("isFree", type: .scalar(Bool.self)),
              GraphQLField("id", type: .scalar(Int.self)),
              GraphQLField("goodsNum", type: .scalar(String.self)),
              GraphQLField("typeName", type: .scalar(String.self)),
              GraphQLField("desc", type: .scalar(String.self)),
              GraphQLField("descImage", type: .scalar(String.self)),
              GraphQLField("descType", type: .scalar(Int.self)),
              GraphQLField("displayTime", type: .scalar(Int.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("squareImage", type: .scalar(String.self)),
              GraphQLField("crossImage", type: .scalar(String.self)),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("resId", type: .scalar(Int.self)),
              GraphQLField("ownerSum", type: .scalar(Int.self)),
              GraphQLField("subName", type: .scalar(String.self)),
              GraphQLField("bookAuthor", type: .scalar(String.self)),
              GraphQLField("resAuthor", type: .scalar(String.self)),
              GraphQLField("isOnlyMainland", type: .scalar(Bool.self)),
              GraphQLField("recommendation", type: .scalar(String.self)),
              GraphQLField("packageDuration", type: .object(PackageDuration.selections)),
              GraphQLField("book", type: .object(Book.selections)),
              GraphQLField("videoBook", type: .object(VideoBook.selections)),
              GraphQLField("price", type: .object(Price.selections)),
              GraphQLField("relatedPeople", type: .list(.object(RelatedPerson.selections))),
              GraphQLField("course", type: .object(Course.selections)),
              GraphQLField("summaryAudioBook", type: .object(SummaryAudioBook.selections)),
              GraphQLField("bookResources", type: .object(BookResource.selections)),
              GraphQLField("summaryBook", type: .object(SummaryBook.selections)),
              GraphQLField("bookClub", type: .object(BookClub.selections)),
              GraphQLField("influencerGuideReading", type: .object(InfluencerGuideReading.selections)),
              GraphQLField("entity", type: .object(Entity.selections)),
              GraphQLField("audioBook", type: .object(AudioBook.selections)),
              GraphQLField("extraUserGoods", type: .list(.object(ExtraUserGood.selections))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(hasFree: Bool? = nil, isFree: Bool? = nil, id: Int? = nil, goodsNum: String? = nil, typeName: String? = nil, desc: String? = nil, descImage: String? = nil, descType: Int? = nil, displayTime: Int? = nil, name: String? = nil, image: String? = nil, squareImage: String? = nil, crossImage: String? = nil, type: String? = nil, resId: Int? = nil, ownerSum: Int? = nil, subName: String? = nil, bookAuthor: String? = nil, resAuthor: String? = nil, isOnlyMainland: Bool? = nil, recommendation: String? = nil, packageDuration: PackageDuration? = nil, book: Book? = nil, videoBook: VideoBook? = nil, price: Price? = nil, relatedPeople: [RelatedPerson?]? = nil, course: Course? = nil, summaryAudioBook: SummaryAudioBook? = nil, bookResources: BookResource? = nil, summaryBook: SummaryBook? = nil, bookClub: BookClub? = nil, influencerGuideReading: InfluencerGuideReading? = nil, entity: Entity? = nil, audioBook: AudioBook? = nil, extraUserGoods: [ExtraUserGood?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "Good", "hasFree": hasFree, "isFree": isFree, "id": id, "goodsNum": goodsNum, "typeName": typeName, "desc": desc, "descImage": descImage, "descType": descType, "displayTime": displayTime, "name": name, "image": image, "squareImage": squareImage, "crossImage": crossImage, "type": type, "resId": resId, "ownerSum": ownerSum, "subName": subName, "bookAuthor": bookAuthor, "resAuthor": resAuthor, "isOnlyMainland": isOnlyMainland, "recommendation": recommendation, "packageDuration": packageDuration.flatMap { (value: PackageDuration) -> ResultMap in value.resultMap }, "book": book.flatMap { (value: Book) -> ResultMap in value.resultMap }, "videoBook": videoBook.flatMap { (value: VideoBook) -> ResultMap in value.resultMap }, "price": price.flatMap { (value: Price) -> ResultMap in value.resultMap }, "relatedPeople": relatedPeople.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, "course": course.flatMap { (value: Course) -> ResultMap in value.resultMap }, "summaryAudioBook": summaryAudioBook.flatMap { (value: SummaryAudioBook) -> ResultMap in value.resultMap }, "bookResources": bookResources.flatMap { (value: BookResource) -> ResultMap in value.resultMap }, "summaryBook": summaryBook.flatMap { (value: SummaryBook) -> ResultMap in value.resultMap }, "bookClub": bookClub.flatMap { (value: BookClub) -> ResultMap in value.resultMap }, "influencerGuideReading": influencerGuideReading.flatMap { (value: InfluencerGuideReading) -> ResultMap in value.resultMap }, "entity": entity.flatMap { (value: Entity) -> ResultMap in value.resultMap }, "audioBook": audioBook.flatMap { (value: AudioBook) -> ResultMap in value.resultMap }, "extraUserGoods": extraUserGoods.flatMap { (value: [ExtraUserGood?]) -> [ResultMap?] in value.map { (value: ExtraUserGood?) -> ResultMap? in value.flatMap { (value: ExtraUserGood) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 是否有免费试听
            public var hasFree: Bool? {
              get {
                return resultMap["hasFree"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "hasFree")
              }
            }

            /// 是否免费
            public var isFree: Bool? {
              get {
                return resultMap["isFree"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isFree")
              }
            }

            public var id: Int? {
              get {
                return resultMap["id"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// 商品编号
            public var goodsNum: String? {
              get {
                return resultMap["goodsNum"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "goodsNum")
              }
            }

            /// 角标名称
            public var typeName: String? {
              get {
                return resultMap["typeName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "typeName")
              }
            }

            /// 商品描述
            public var desc: String? {
              get {
                return resultMap["desc"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "desc")
              }
            }

            /// 商品简介图片
            public var descImage: String? {
              get {
                return resultMap["descImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "descImage")
              }
            }

            /// 商品描述类型 1展示文本简介 2展示图片简介（descImage）
            public var descType: Int? {
              get {
                return resultMap["descType"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "descType")
              }
            }

            /// 前端展示时间
            public var displayTime: Int? {
              get {
                return resultMap["displayTime"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "displayTime")
              }
            }

            /// 商品名称
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// 商品图片
            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }

            /// 方图
            public var squareImage: String? {
              get {
                return resultMap["squareImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "squareImage")
              }
            }

            /// 商品横图片
            public var crossImage: String? {
              get {
                return resultMap["crossImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "crossImage")
              }
            }

            /// 商品类型
            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            /// 相关资源ID
            public var resId: Int? {
              get {
                return resultMap["resId"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "resId")
              }
            }

            /// 订阅数
            public var ownerSum: Int? {
              get {
                return resultMap["ownerSum"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "ownerSum")
              }
            }

            /// 商品副名称
            public var subName: String? {
              get {
                return resultMap["subName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "subName")
              }
            }

            /// 图书作者
            public var bookAuthor: String? {
              get {
                return resultMap["bookAuthor"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "bookAuthor")
              }
            }

            /// 关联作者
            public var resAuthor: String? {
              get {
                return resultMap["resAuthor"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "resAuthor")
              }
            }

            /// 是否只允许中国大陆购买
            public var isOnlyMainland: Bool? {
              get {
                return resultMap["isOnlyMainland"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isOnlyMainland")
              }
            }

            /// 编辑荐语
            public var recommendation: String? {
              get {
                return resultMap["recommendation"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "recommendation")
              }
            }

            /// 畅享包商品信息 仅当type为package
            public var packageDuration: PackageDuration? {
              get {
                return (resultMap["packageDuration"] as? ResultMap).flatMap { PackageDuration(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "packageDuration")
              }
            }

            /// 图书详情
            public var book: Book? {
              get {
                return (resultMap["book"] as? ResultMap).flatMap { Book(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "book")
              }
            }

            /// 视频读书详情 仅当商品类型为videoBook
            public var videoBook: VideoBook? {
              get {
                return (resultMap["videoBook"] as? ResultMap).flatMap { VideoBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "videoBook")
              }
            }

            /// 价格信息
            public var price: Price? {
              get {
                return (resultMap["price"] as? ResultMap).flatMap { Price(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "price")
              }
            }

            /// 关联人物信息列表
            public var relatedPeople: [RelatedPerson?]? {
              get {
                return (resultMap["relatedPeople"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [RelatedPerson?] in value.map { (value: ResultMap?) -> RelatedPerson? in value.flatMap { (value: ResultMap) -> RelatedPerson in RelatedPerson(unsafeResultMap: value) } } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, forKey: "relatedPeople")
              }
            }

            /// 课程详情 仅当商品类型为course
            public var course: Course? {
              get {
                return (resultMap["course"] as? ResultMap).flatMap { Course(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "course")
              }
            }

            /// 好书快听阅读时差详情 仅当商品类型为summaryAudioBook或globalSummaryAudioBook
            public var summaryAudioBook: SummaryAudioBook? {
              get {
                return (resultMap["summaryAudioBook"] as? ResultMap).flatMap { SummaryAudioBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "summaryAudioBook")
              }
            }

            /// 编辑荐书相关资源 仅当商品类型为bookHomepage
            public var bookResources: BookResource? {
              get {
                return (resultMap["bookResources"] as? ResultMap).flatMap { BookResource(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "bookResources")
              }
            }

            /// 极简全球阅读详情 仅当商品类型为globalSummaryBook
            public var summaryBook: SummaryBook? {
              get {
                return (resultMap["summaryBook"] as? ResultMap).flatMap { SummaryBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "summaryBook")
              }
            }

            /// 大咖领读详情 仅当商品类型为bookClub
            public var bookClub: BookClub? {
              get {
                return (resultMap["bookClub"] as? ResultMap).flatMap { BookClub(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "bookClub")
              }
            }

            /// 新大咖领读详情 仅当商品类型为influencerGuideReading
            public var influencerGuideReading: InfluencerGuideReading? {
              get {
                return (resultMap["influencerGuideReading"] as? ResultMap).flatMap { InfluencerGuideReading(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "influencerGuideReading")
              }
            }

            /// 实物商品属性
            public var entity: Entity? {
              get {
                return (resultMap["entity"] as? ResultMap).flatMap { Entity(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "entity")
              }
            }

            /// 有声书详情 仅当商品类型为audioBook
            public var audioBook: AudioBook? {
              get {
                return (resultMap["audioBook"] as? ResultMap).flatMap { AudioBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "audioBook")
              }
            }

            /// 加价购商品
            public var extraUserGoods: [ExtraUserGood?]? {
              get {
                return (resultMap["extraUserGoods"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ExtraUserGood?] in value.map { (value: ResultMap?) -> ExtraUserGood? in value.flatMap { (value: ResultMap) -> ExtraUserGood in ExtraUserGood(unsafeResultMap: value) } } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [ExtraUserGood?]) -> [ResultMap?] in value.map { (value: ExtraUserGood?) -> ResultMap? in value.flatMap { (value: ExtraUserGood) -> ResultMap in value.resultMap } } }, forKey: "extraUserGoods")
              }
            }

            public struct PackageDuration: GraphQLSelectionSet {
              public static let possibleTypes = ["PackageDuration"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("package", type: .object(Package.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, package: Package? = nil) {
                self.init(unsafeResultMap: ["__typename": "PackageDuration", "id": id, "package": package.flatMap { (value: Package) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 期限Id
              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 畅享包信息
              public var package: Package? {
                get {
                  return (resultMap["package"] as? ResultMap).flatMap { Package(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "package")
                }
              }

              public struct Package: GraphQLSelectionSet {
                public static let possibleTypes = ["Package"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("isContainsEntity", type: .scalar(Bool.self)),
                  GraphQLField("type", type: .scalar(String.self)),
                  GraphQLField("id", type: .scalar(Int.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(isContainsEntity: Bool? = nil, type: String? = nil, id: Int? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Package", "isContainsEntity": isContainsEntity, "type": type, "id": id])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 是否包含实物
                public var isContainsEntity: Bool? {
                  get {
                    return resultMap["isContainsEntity"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isContainsEntity")
                  }
                }

                /// 类型
                public var type: String? {
                  get {
                    return resultMap["type"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "type")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }
              }
            }

            public struct Book: GraphQLSelectionSet {
              public static let possibleTypes = ["Book"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("cover", type: .scalar(String.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, cover: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "Book", "id": id, "cover": cover])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 封面
              public var cover: String? {
                get {
                  return resultMap["cover"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cover")
                }
              }
            }

            public struct VideoBook: GraphQLSelectionSet {
              public static let possibleTypes = ["VideoBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("image", type: .scalar(String.self)),
                GraphQLField("desc", type: .scalar(String.self)),
                GraphQLField("duration", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, name: String? = nil, image: String? = nil, desc: String? = nil, duration: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "VideoBook", "id": id, "name": name, "image": image, "desc": desc, "duration": duration])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
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

              /// 图片
              public var image: String? {
                get {
                  return resultMap["image"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "image")
                }
              }

              /// 描述
              public var desc: String? {
                get {
                  return resultMap["desc"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "desc")
                }
              }

              /// 时长（秒）
              public var duration: Int? {
                get {
                  return resultMap["duration"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "duration")
                }
              }
            }

            public struct Price: GraphQLSelectionSet {
              public static let possibleTypes = ["Price"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("selling", type: .scalar(Int.self)),
                GraphQLField("userSelling", type: .scalar(Int.self)),
                GraphQLField("normal", type: .scalar(Int.self)),
                GraphQLField("isSale", type: .scalar(Bool.self)),
                GraphQLField("userSellingWithRequiredExtraGoods", type: .scalar(Int.self)),
                GraphQLField("promotionPrice", type: .scalar(Int.self)),
                GraphQLField("saleLeftSeconds", type: .scalar(Int.self)),
                GraphQLField("promotionPeriod", type: .object(PromotionPeriod.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, selling: Int? = nil, userSelling: Int? = nil, normal: Int? = nil, isSale: Bool? = nil, userSellingWithRequiredExtraGoods: Int? = nil, promotionPrice: Int? = nil, saleLeftSeconds: Int? = nil, promotionPeriod: PromotionPeriod? = nil) {
                self.init(unsafeResultMap: ["__typename": "Price", "id": id, "selling": selling, "userSelling": userSelling, "normal": normal, "isSale": isSale, "userSellingWithRequiredExtraGoods": userSellingWithRequiredExtraGoods, "promotionPrice": promotionPrice, "saleLeftSeconds": saleLeftSeconds, "promotionPeriod": promotionPeriod.flatMap { (value: PromotionPeriod) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 售价
              public var selling: Int? {
                get {
                  return resultMap["selling"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "selling")
                }
              }

              /// 个人售价
              public var userSelling: Int? {
                get {
                  return resultMap["userSelling"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "userSelling")
                }
              }

              /// 原价
              public var normal: Int? {
                get {
                  return resultMap["normal"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "normal")
                }
              }

              /// 当前有特价或限时活动价
              public var isSale: Bool? {
                get {
                  return resultMap["isSale"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isSale")
                }
              }

              /// 最低需要支付金额（必选加价购）
              public var userSellingWithRequiredExtraGoods: Int? {
                get {
                  return resultMap["userSellingWithRequiredExtraGoods"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "userSellingWithRequiredExtraGoods")
                }
              }

              /// 原价
              public var promotionPrice: Int? {
                get {
                  return resultMap["promotionPrice"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "promotionPrice")
                }
              }

              /// 特价剩余秒数
              public var saleLeftSeconds: Int? {
                get {
                  return resultMap["saleLeftSeconds"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "saleLeftSeconds")
                }
              }

              /// 促销活动时间段
              public var promotionPeriod: PromotionPeriod? {
                get {
                  return (resultMap["promotionPeriod"] as? ResultMap).flatMap { PromotionPeriod(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "promotionPeriod")
                }
              }

              public struct PromotionPeriod: GraphQLSelectionSet {
                public static let possibleTypes = ["PromotionPeriod"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("startTime", type: .scalar(Int.self)),
                  GraphQLField("endTime", type: .scalar(Int.self)),
                  GraphQLField("status", type: .scalar(PromotionPeriodStatus.self)),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("promotion", type: .object(Promotion.selections)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(startTime: Int? = nil, endTime: Int? = nil, status: PromotionPeriodStatus? = nil, id: Int? = nil, promotion: Promotion? = nil) {
                  self.init(unsafeResultMap: ["__typename": "PromotionPeriod", "startTime": startTime, "endTime": endTime, "status": status, "id": id, "promotion": promotion.flatMap { (value: Promotion) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 开始时间
                public var startTime: Int? {
                  get {
                    return resultMap["startTime"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "startTime")
                  }
                }

                /// 结束时间
                public var endTime: Int? {
                  get {
                    return resultMap["endTime"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "endTime")
                  }
                }

                /// 促销活动时间段状态
                public var status: PromotionPeriodStatus? {
                  get {
                    return resultMap["status"] as? PromotionPeriodStatus
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "status")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// 促销活动
                public var promotion: Promotion? {
                  get {
                    return (resultMap["promotion"] as? ResultMap).flatMap { Promotion(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "promotion")
                  }
                }

                public struct Promotion: GraphQLSelectionSet {
                  public static let possibleTypes = ["Promotion"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(Int.self)),
                    GraphQLField("isTimeLimit", type: .scalar(Bool.self)),
                    GraphQLField("periodStartTime", type: .scalar(Int.self)),
                    GraphQLField("periodEndTime", type: .scalar(Int.self)),
                    GraphQLField("soldQuantity", type: .scalar(Int.self)),
                    GraphQLField("limitQuantity", type: .scalar(Int.self)),
                    GraphQLField("status", type: .scalar(PromotionStatus.self)),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: Int? = nil, isTimeLimit: Bool? = nil, periodStartTime: Int? = nil, periodEndTime: Int? = nil, soldQuantity: Int? = nil, limitQuantity: Int? = nil, status: PromotionStatus? = nil) {
                    self.init(unsafeResultMap: ["__typename": "Promotion", "id": id, "isTimeLimit": isTimeLimit, "periodStartTime": periodStartTime, "periodEndTime": periodEndTime, "soldQuantity": soldQuantity, "limitQuantity": limitQuantity, "status": status])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var id: Int? {
                    get {
                      return resultMap["id"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  /// 是否限时活动
                  public var isTimeLimit: Bool? {
                    get {
                      return resultMap["isTimeLimit"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isTimeLimit")
                    }
                  }

                  /// 预计时间段开始时间 没有正在进行的时间段并且有未开始的时间段时有值
                  public var periodStartTime: Int? {
                    get {
                      return resultMap["periodStartTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "periodStartTime")
                    }
                  }

                  /// 预计时间段结束时间 当前有进行中的时间段并且其有结束时间
                  public var periodEndTime: Int? {
                    get {
                      return resultMap["periodEndTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "periodEndTime")
                    }
                  }

                  /// 售出数量
                  public var soldQuantity: Int? {
                    get {
                      return resultMap["soldQuantity"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "soldQuantity")
                    }
                  }

                  /// 总数量（限量活动才有值）
                  public var limitQuantity: Int? {
                    get {
                      return resultMap["limitQuantity"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "limitQuantity")
                    }
                  }

                  /// 促销活动状态
                  public var status: PromotionStatus? {
                    get {
                      return resultMap["status"] as? PromotionStatus
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "status")
                    }
                  }
                }
              }
            }

            public struct RelatedPerson: GraphQLSelectionSet {
              public static let possibleTypes = ["RelatedPerson"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("image", type: .scalar(String.self)),
                GraphQLField("intro", type: .scalar(String.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, name: String? = nil, image: String? = nil, intro: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "RelatedPerson", "id": id, "name": name, "image": image, "intro": intro])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
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

              /// 图片
              public var image: String? {
                get {
                  return resultMap["image"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "image")
                }
              }

              /// 简介
              public var intro: String? {
                get {
                  return resultMap["intro"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "intro")
                }
              }
            }

            public struct Course: GraphQLSelectionSet {
              public static let possibleTypes = ["Course"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("author", type: .scalar(String.self)),
                GraphQLField("isFinished", type: .scalar(Bool.self)),
                GraphQLField("endDate", type: .scalar(String.self)),
                GraphQLField("type", type: .scalar(CourseType.self)),
                GraphQLField("chapters", type: .list(.object(Chapter.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(author: String? = nil, isFinished: Bool? = nil, endDate: String? = nil, type: CourseType? = nil, chapters: [Chapter?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "Course", "author": author, "isFinished": isFinished, "endDate": endDate, "type": type, "chapters": chapters.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 主讲人
              public var author: String? {
                get {
                  return resultMap["author"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "author")
                }
              }

              /// 是否已完结
              public var isFinished: Bool? {
                get {
                  return resultMap["isFinished"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isFinished")
                }
              }

              /// 预计完成时间
              public var endDate: String? {
                get {
                  return resultMap["endDate"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endDate")
                }
              }

              /// 类型
              public var type: CourseType? {
                get {
                  return resultMap["type"] as? CourseType
                }
                set {
                  resultMap.updateValue(newValue, forKey: "type")
                }
              }

              /// 章节列表
              public var chapters: [Chapter?]? {
                get {
                  return (resultMap["chapters"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Chapter?] in value.map { (value: ResultMap?) -> Chapter? in value.flatMap { (value: ResultMap) -> Chapter in Chapter(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }, forKey: "chapters")
                }
              }

              public struct Chapter: GraphQLSelectionSet {
                public static let possibleTypes = ["CourseChapter"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("hasDesc", type: .scalar(Bool.self)),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                  GraphQLField("duration", type: .scalar(Int.self)),
                  GraphQLField("isFree", type: .scalar(Bool.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(hasDesc: Bool? = nil, id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "CourseChapter", "hasDesc": hasDesc, "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 是否有文字稿
                public var hasDesc: Bool? {
                  get {
                    return resultMap["hasDesc"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasDesc")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// 标题
                public var name: String? {
                  get {
                    return resultMap["name"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// 资源链接 仅当isFree为true或query为userGood并且才有可能返回
                public var url: String? {
                  get {
                    return resultMap["url"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                /// 时长（秒）
                public var duration: Int? {
                  get {
                    return resultMap["duration"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "duration")
                  }
                }

                /// 是否免费
                public var isFree: Bool? {
                  get {
                    return resultMap["isFree"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFree")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct SummaryAudioBook: GraphQLSelectionSet {
              public static let possibleTypes = ["SummaryAudioBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("cover", type: .scalar(String.self)),
                GraphQLField("duration", type: .scalar(Int.self)),
                GraphQLField("url", type: .scalar(String.self)),
                GraphQLField("id", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(name: String? = nil, cover: String? = nil, duration: Int? = nil, url: String? = nil, id: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "SummaryAudioBook", "name": name, "cover": cover, "duration": duration, "url": url, "id": id])
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

              /// 封面图
              public var cover: String? {
                get {
                  return resultMap["cover"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cover")
                }
              }

              /// 时长（秒）
              public var duration: Int? {
                get {
                  return resultMap["duration"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "duration")
                }
              }

              /// 资源链接
              public var url: String? {
                get {
                  return resultMap["url"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }
            }

            public struct BookResource: GraphQLSelectionSet {
              public static let possibleTypes = ["BookResources"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("briefAudio", type: .object(BriefAudio.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(briefAudio: BriefAudio? = nil) {
                self.init(unsafeResultMap: ["__typename": "BookResources", "briefAudio": briefAudio.flatMap { (value: BriefAudio) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 一分钟简介
              public var briefAudio: BriefAudio? {
                get {
                  return (resultMap["briefAudio"] as? ResultMap).flatMap { BriefAudio(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "briefAudio")
                }
              }

              public struct BriefAudio: GraphQLSelectionSet {
                public static let possibleTypes = ["Audio"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("desc", type: .scalar(String.self)),
                  GraphQLField("content", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                  GraphQLField("duration", type: .scalar(Int.self)),
                  GraphQLField("isFree", type: .scalar(Bool.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, desc: String? = nil, content: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "desc": desc, "content": content, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
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

                /// 描述
                public var desc: String? {
                  get {
                    return resultMap["desc"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "desc")
                  }
                }

                /// 文字稿
                public var content: String? {
                  get {
                    return resultMap["content"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "content")
                  }
                }

                /// 资源链接
                public var url: String? {
                  get {
                    return resultMap["url"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                /// 时长（秒）
                public var duration: Int? {
                  get {
                    return resultMap["duration"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "duration")
                  }
                }

                /// 是否免费
                public var isFree: Bool? {
                  get {
                    return resultMap["isFree"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFree")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct SummaryBook: GraphQLSelectionSet {
              public static let possibleTypes = ["SummaryBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("content", type: .scalar(String.self)),
                GraphQLField("chapterList", type: .list(.object(ChapterList.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(content: String? = nil, chapterList: [ChapterList?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "SummaryBook", "content": content, "chapterList": chapterList.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 内容
              public var content: String? {
                get {
                  return resultMap["content"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "content")
                }
              }

              /// 电子书章节
              public var chapterList: [ChapterList?]? {
                get {
                  return (resultMap["chapterList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterList?] in value.map { (value: ResultMap?) -> ChapterList? in value.flatMap { (value: ResultMap) -> ChapterList in ChapterList(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }, forKey: "chapterList")
                }
              }

              public struct ChapterList: GraphQLSelectionSet {
                public static let possibleTypes = ["EpubChapter"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("epubPath", type: .scalar(String.self)),
                  GraphQLField("num", type: .scalar(Int.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, epubPath: String? = nil, num: Int? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "EpubChapter", "id": id, "name": name, "epubPath": epubPath, "num": num, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// 章节名称
                public var name: String? {
                  get {
                    return resultMap["name"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// epub路径
                public var epubPath: String? {
                  get {
                    return resultMap["epubPath"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "epubPath")
                  }
                }

                /// 章节序号
                public var num: Int? {
                  get {
                    return resultMap["num"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "num")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct BookClub: GraphQLSelectionSet {
              public static let possibleTypes = ["BookClub"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("author", type: .scalar(String.self)),
                GraphQLField("desc", type: .scalar(String.self)),
                GraphQLField("content", type: .scalar(String.self)),
                GraphQLField("cover", type: .scalar(String.self)),
                GraphQLField("url", type: .scalar(String.self)),
                GraphQLField("duration", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, name: String? = nil, author: String? = nil, desc: String? = nil, content: String? = nil, cover: String? = nil, url: String? = nil, duration: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "BookClub", "id": id, "name": name, "author": author, "desc": desc, "content": content, "cover": cover, "url": url, "duration": duration])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
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

              /// 音频作者
              public var author: String? {
                get {
                  return resultMap["author"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "author")
                }
              }

              /// 描述
              public var desc: String? {
                get {
                  return resultMap["desc"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "desc")
                }
              }

              /// 文字稿
              public var content: String? {
                get {
                  return resultMap["content"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "content")
                }
              }

              /// 封面图
              public var cover: String? {
                get {
                  return resultMap["cover"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cover")
                }
              }

              /// 资源链接
              public var url: String? {
                get {
                  return resultMap["url"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }

              /// 时长（秒）
              public var duration: Int? {
                get {
                  return resultMap["duration"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "duration")
                }
              }
            }

            public struct InfluencerGuideReading: GraphQLSelectionSet {
              public static let possibleTypes = ["InfluencerGuideReading"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("headerImage", type: .scalar(String.self)),
                GraphQLField("wechatGroupQrcode", type: .scalar(String.self)),
                GraphQLField("isFinished", type: .scalar(Bool.self)),
                GraphQLField("endTime", type: .scalar(Int.self)),
                GraphQLField("albums", type: .list(.object(Album.selections))),
                GraphQLField("lecturers", type: .list(.object(Lecturer.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(headerImage: String? = nil, wechatGroupQrcode: String? = nil, isFinished: Bool? = nil, endTime: Int? = nil, albums: [Album?]? = nil, lecturers: [Lecturer?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "InfluencerGuideReading", "headerImage": headerImage, "wechatGroupQrcode": wechatGroupQrcode, "isFinished": isFinished, "endTime": endTime, "albums": albums.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, "lecturers": lecturers.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 头图
              public var headerImage: String? {
                get {
                  return resultMap["headerImage"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "headerImage")
                }
              }

              /// 购买后群二维码
              public var wechatGroupQrcode: String? {
                get {
                  return resultMap["wechatGroupQrcode"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "wechatGroupQrcode")
                }
              }

              /// 是否已完结
              public var isFinished: Bool? {
                get {
                  return resultMap["isFinished"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isFinished")
                }
              }

              /// 预计完成时间
              public var endTime: Int? {
                get {
                  return resultMap["endTime"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endTime")
                }
              }

              /// 专辑
              public var albums: [Album?]? {
                get {
                  return (resultMap["albums"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Album?] in value.map { (value: ResultMap?) -> Album? in value.flatMap { (value: ResultMap) -> Album in Album(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, forKey: "albums")
                }
              }

              /// 主讲人列表
              public var lecturers: [Lecturer?]? {
                get {
                  return (resultMap["lecturers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Lecturer?] in value.map { (value: ResultMap?) -> Lecturer? in value.flatMap { (value: ResultMap) -> Lecturer in Lecturer(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }, forKey: "lecturers")
                }
              }

              public struct Album: GraphQLSelectionSet {
                public static let possibleTypes = ["InfluencerGuideReadingAlbum"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("image", type: .scalar(String.self)),
                  GraphQLField("sections", type: .list(.object(Section.selections))),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, image: String? = nil, sections: [Section?]? = nil) {
                  self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingAlbum", "id": id, "name": name, "image": image, "sections": sections.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
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

                /// 封面图
                public var image: String? {
                  get {
                    return resultMap["image"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "image")
                  }
                }

                /// 分片列表
                public var sections: [Section?]? {
                  get {
                    return (resultMap["sections"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Section?] in value.map { (value: ResultMap?) -> Section? in value.flatMap { (value: ResultMap) -> Section in Section(unsafeResultMap: value) } } }
                  }
                  set {
                    resultMap.updateValue(newValue.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }, forKey: "sections")
                  }
                }

                public struct Section: GraphQLSelectionSet {
                  public static let possibleTypes = ["InfluencerGuideReadingSection"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(Int.self)),
                    GraphQLField("name", type: .scalar(String.self)),
                    GraphQLField("audios", type: .list(.object(Audio.selections))),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: Int? = nil, name: String? = nil, audios: [Audio?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingSection", "id": id, "name": name, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var id: Int? {
                    get {
                      return resultMap["id"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
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

                  /// 音频列表
                  public var audios: [Audio?]? {
                    get {
                      return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                    }
                    set {
                      resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                    }
                  }

                  public struct Audio: GraphQLSelectionSet {
                    public static let possibleTypes = ["Audio"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("url", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                      GraphQLField("isFree", type: .scalar(Bool.self)),
                      GraphQLField("isLast", type: .scalar(Bool.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 资源链接
                    public var url: String? {
                      get {
                        return resultMap["url"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "url")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }

                    /// 是否免费
                    public var isFree: Bool? {
                      get {
                        return resultMap["isFree"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFree")
                      }
                    }

                    /// 是否最后一章节
                    public var isLast: Bool? {
                      get {
                        return resultMap["isLast"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isLast")
                      }
                    }
                  }
                }
              }

              public struct Lecturer: GraphQLSelectionSet {
                public static let possibleTypes = ["RelatedPerson"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("intro", type: .scalar(String.self)),
                  GraphQLField("image", type: .scalar(String.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(name: String? = nil, intro: String? = nil, image: String? = nil) {
                  self.init(unsafeResultMap: ["__typename": "RelatedPerson", "name": name, "intro": intro, "image": image])
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

                /// 简介
                public var intro: String? {
                  get {
                    return resultMap["intro"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "intro")
                  }
                }

                /// 图片
                public var image: String? {
                  get {
                    return resultMap["image"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "image")
                  }
                }
              }
            }

            public struct Entity: GraphQLSelectionSet {
              public static let possibleTypes = ["Entity"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("stock", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(stock: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "Entity", "stock": stock])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 库存数
              public var stock: Int? {
                get {
                  return resultMap["stock"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "stock")
                }
              }
            }

            public struct AudioBook: GraphQLSelectionSet {
              public static let possibleTypes = ["AudioBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("isFinished", type: .scalar(Bool.self)),
                GraphQLField("endDate", type: .scalar(String.self)),
                GraphQLField("audios", type: .list(.object(Audio.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(isFinished: Bool? = nil, endDate: String? = nil, audios: [Audio?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "AudioBook", "isFinished": isFinished, "endDate": endDate, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 是否已完结
              public var isFinished: Bool? {
                get {
                  return resultMap["isFinished"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isFinished")
                }
              }

              /// 预计完成时间
              public var endDate: String? {
                get {
                  return resultMap["endDate"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endDate")
                }
              }

              /// 音频列表
              public var audios: [Audio?]? {
                get {
                  return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                }
              }

              public struct Audio: GraphQLSelectionSet {
                public static let possibleTypes = ["Audio"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                  GraphQLField("duration", type: .scalar(Int.self)),
                  GraphQLField("isFree", type: .scalar(Bool.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
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

                /// 资源链接
                public var url: String? {
                  get {
                    return resultMap["url"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                /// 时长（秒）
                public var duration: Int? {
                  get {
                    return resultMap["duration"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "duration")
                  }
                }

                /// 是否免费
                public var isFree: Bool? {
                  get {
                    return resultMap["isFree"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFree")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct ExtraUserGood: GraphQLSelectionSet {
              public static let possibleTypes = ["ExtraUserGood"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("isRequired", type: .scalar(Bool.self)),
                GraphQLField("extraPrice", type: .scalar(Int.self)),
                GraphQLField("userGood", type: .object(UserGood.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, isRequired: Bool? = nil, extraPrice: Int? = nil, userGood: UserGood? = nil) {
                self.init(unsafeResultMap: ["__typename": "ExtraUserGood", "id": id, "isRequired": isRequired, "extraPrice": extraPrice, "userGood": userGood.flatMap { (value: UserGood) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// ID
              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 是否必购
              public var isRequired: Bool? {
                get {
                  return resultMap["isRequired"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isRequired")
                }
              }

              /// 加价购售价
              public var extraPrice: Int? {
                get {
                  return resultMap["extraPrice"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "extraPrice")
                }
              }

              /// 用户商品
              public var userGood: UserGood? {
                get {
                  return (resultMap["userGood"] as? ResultMap).flatMap { UserGood(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "userGood")
                }
              }

              public struct UserGood: GraphQLSelectionSet {
                public static let possibleTypes = ["UserGood"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("hasRight", type: .scalar(Bool.self)),
                  GraphQLField("hasCoupon", type: .scalar(Bool.self)),
                  GraphQLField("obtainTime", type: .scalar(Int.self)),
                  GraphQLField("obtainMode", type: .scalar(Int.self)),
                  GraphQLField("hasPackageRight", type: .scalar(Bool.self)),
                  GraphQLField("isFavorite", type: .scalar(Bool.self)),
                  GraphQLField("studyProgress", type: .object(StudyProgress.selections)),
                  GraphQLField("pageInfo", type: .object(PageInfo.selections)),
                  GraphQLField("good", type: .object(Good.selections)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(hasRight: Bool? = nil, hasCoupon: Bool? = nil, obtainTime: Int? = nil, obtainMode: Int? = nil, hasPackageRight: Bool? = nil, isFavorite: Bool? = nil, studyProgress: StudyProgress? = nil, pageInfo: PageInfo? = nil, good: Good? = nil) {
                  self.init(unsafeResultMap: ["__typename": "UserGood", "hasRight": hasRight, "hasCoupon": hasCoupon, "obtainTime": obtainTime, "obtainMode": obtainMode, "hasPackageRight": hasPackageRight, "isFavorite": isFavorite, "studyProgress": studyProgress.flatMap { (value: StudyProgress) -> ResultMap in value.resultMap }, "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "good": good.flatMap { (value: Good) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 是否有权限
                public var hasRight: Bool? {
                  get {
                    return resultMap["hasRight"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasRight")
                  }
                }

                /// 是否有可用优惠券
                public var hasCoupon: Bool? {
                  get {
                    return resultMap["hasCoupon"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasCoupon")
                  }
                }

                /// 获得时间
                public var obtainTime: Int? {
                  get {
                    return resultMap["obtainTime"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "obtainTime")
                  }
                }

                /// 获得方式 1购买 2唯一码 3红书包 4免费领取 5appstore内购 6app内购 7兑换码 8试用码 9参加功能活动 10中信联盟 11赠礼订单
                /// 12大布兑换码 13年会赠送 14分享有礼获取 15分享红包获赠商品 16点击分享红包获取商品
                public var obtainMode: Int? {
                  get {
                    return resultMap["obtainMode"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "obtainMode")
                  }
                }

                /// 是否有畅享权限，仅query userGood时返回
                public var hasPackageRight: Bool? {
                  get {
                    return resultMap["hasPackageRight"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasPackageRight")
                  }
                }

                /// 是否收藏
                public var isFavorite: Bool? {
                  get {
                    return resultMap["isFavorite"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFavorite")
                  }
                }

                /// 学习进度信息
                public var studyProgress: StudyProgress? {
                  get {
                    return (resultMap["studyProgress"] as? ResultMap).flatMap { StudyProgress(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "studyProgress")
                  }
                }

                /// 分页信息
                public var pageInfo: PageInfo? {
                  get {
                    return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
                  }
                }

                /// 商品信息
                public var good: Good? {
                  get {
                    return (resultMap["good"] as? ResultMap).flatMap { Good(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "good")
                  }
                }

                public struct StudyProgress: GraphQLSelectionSet {
                  public static let possibleTypes = ["StudyProgress"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("chapterId", type: .scalar(Int.self)),
                    GraphQLField("percent", type: .scalar(Int.self)),
                    GraphQLField("currentTime", type: .scalar(Int.self)),
                    GraphQLField("isEnd", type: .scalar(Bool.self)),
                    GraphQLField("chapterName", type: .scalar(String.self)),
                    GraphQLField("chapterStudyProgressList", type: .list(.object(ChapterStudyProgressList.selections))),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(chapterId: Int? = nil, percent: Int? = nil, currentTime: Int? = nil, isEnd: Bool? = nil, chapterName: String? = nil, chapterStudyProgressList: [ChapterStudyProgressList?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "StudyProgress", "chapterId": chapterId, "percent": percent, "currentTime": currentTime, "isEnd": isEnd, "chapterName": chapterName, "chapterStudyProgressList": chapterStudyProgressList.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// 章节ID
                  public var chapterId: Int? {
                    get {
                      return resultMap["chapterId"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "chapterId")
                    }
                  }

                  /// 百分比进度（0-10000整数）
                  public var percent: Int? {
                    get {
                      return resultMap["percent"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "percent")
                    }
                  }

                  /// 当前播放时长
                  public var currentTime: Int? {
                    get {
                      return resultMap["currentTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "currentTime")
                    }
                  }

                  /// 是否已学到最后一章（和数据库isEnd不一样）
                  public var isEnd: Bool? {
                    get {
                      return resultMap["isEnd"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isEnd")
                    }
                  }

                  /// 章节名称
                  public var chapterName: String? {
                    get {
                      return resultMap["chapterName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "chapterName")
                    }
                  }

                  /// 章节学习进度
                  public var chapterStudyProgressList: [ChapterStudyProgressList?]? {
                    get {
                      return (resultMap["chapterStudyProgressList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterStudyProgressList?] in value.map { (value: ResultMap?) -> ChapterStudyProgressList? in value.flatMap { (value: ResultMap) -> ChapterStudyProgressList in ChapterStudyProgressList(unsafeResultMap: value) } } }
                    }
                    set {
                      resultMap.updateValue(newValue.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }, forKey: "chapterStudyProgressList")
                    }
                  }

                  public struct ChapterStudyProgressList: GraphQLSelectionSet {
                    public static let possibleTypes = ["ChapterStudyProgress"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("chapterId", type: .scalar(Int.self)),
                      GraphQLField("percent", type: .scalar(Int.self)),
                      GraphQLField("currentTime", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(chapterId: Int? = nil, percent: Int? = nil, currentTime: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "ChapterStudyProgress", "chapterId": chapterId, "percent": percent, "currentTime": currentTime])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 章节ID
                    public var chapterId: Int? {
                      get {
                        return resultMap["chapterId"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "chapterId")
                      }
                    }

                    /// 百分比进度（0-10000整数）
                    public var percent: Int? {
                      get {
                        return resultMap["percent"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "percent")
                      }
                    }

                    /// 当前播放时长
                    public var currentTime: Int? {
                      get {
                        return resultMap["currentTime"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "currentTime")
                      }
                    }
                  }
                }

                public struct PageInfo: GraphQLSelectionSet {
                  public static let possibleTypes = ["PageInfo"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("totalCount", type: .scalar(Int.self)),
                    GraphQLField("hasNext", type: .scalar(Bool.self)),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(totalCount: Int? = nil, hasNext: Bool? = nil) {
                    self.init(unsafeResultMap: ["__typename": "PageInfo", "totalCount": totalCount, "hasNext": hasNext])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// 总数
                  public var totalCount: Int? {
                    get {
                      return resultMap["totalCount"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "totalCount")
                    }
                  }

                  /// 是否还有下一条
                  public var hasNext: Bool? {
                    get {
                      return resultMap["hasNext"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "hasNext")
                    }
                  }
                }

                public struct Good: GraphQLSelectionSet {
                  public static let possibleTypes = ["Good"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("hasFree", type: .scalar(Bool.self)),
                    GraphQLField("isFree", type: .scalar(Bool.self)),
                    GraphQLField("id", type: .scalar(Int.self)),
                    GraphQLField("goodsNum", type: .scalar(String.self)),
                    GraphQLField("typeName", type: .scalar(String.self)),
                    GraphQLField("desc", type: .scalar(String.self)),
                    GraphQLField("descImage", type: .scalar(String.self)),
                    GraphQLField("descType", type: .scalar(Int.self)),
                    GraphQLField("displayTime", type: .scalar(Int.self)),
                    GraphQLField("name", type: .scalar(String.self)),
                    GraphQLField("image", type: .scalar(String.self)),
                    GraphQLField("crossImage", type: .scalar(String.self)),
                    GraphQLField("squareImage", type: .scalar(String.self)),
                    GraphQLField("type", type: .scalar(String.self)),
                    GraphQLField("resId", type: .scalar(Int.self)),
                    GraphQLField("ownerSum", type: .scalar(Int.self)),
                    GraphQLField("subName", type: .scalar(String.self)),
                    GraphQLField("bookAuthor", type: .scalar(String.self)),
                    GraphQLField("resAuthor", type: .scalar(String.self)),
                    GraphQLField("isOnlyMainland", type: .scalar(Bool.self)),
                    GraphQLField("recommendation", type: .scalar(String.self)),
                    GraphQLField("book", type: .object(Book.selections)),
                    GraphQLField("videoBook", type: .object(VideoBook.selections)),
                    GraphQLField("relatedPeople", type: .list(.object(RelatedPerson.selections))),
                    GraphQLField("price", type: .object(Price.selections)),
                    GraphQLField("course", type: .object(Course.selections)),
                    GraphQLField("entity", type: .object(Entity.selections)),
                    GraphQLField("summaryAudioBook", type: .object(SummaryAudioBook.selections)),
                    GraphQLField("bookResources", type: .object(BookResource.selections)),
                    GraphQLField("summaryBook", type: .object(SummaryBook.selections)),
                    GraphQLField("bookClub", type: .object(BookClub.selections)),
                    GraphQLField("influencerGuideReading", type: .object(InfluencerGuideReading.selections)),
                    GraphQLField("audioBook", type: .object(AudioBook.selections)),
                    GraphQLField("liveReplay", type: .object(LiveReplay.selections)),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(hasFree: Bool? = nil, isFree: Bool? = nil, id: Int? = nil, goodsNum: String? = nil, typeName: String? = nil, desc: String? = nil, descImage: String? = nil, descType: Int? = nil, displayTime: Int? = nil, name: String? = nil, image: String? = nil, crossImage: String? = nil, squareImage: String? = nil, type: String? = nil, resId: Int? = nil, ownerSum: Int? = nil, subName: String? = nil, bookAuthor: String? = nil, resAuthor: String? = nil, isOnlyMainland: Bool? = nil, recommendation: String? = nil, book: Book? = nil, videoBook: VideoBook? = nil, relatedPeople: [RelatedPerson?]? = nil, price: Price? = nil, course: Course? = nil, entity: Entity? = nil, summaryAudioBook: SummaryAudioBook? = nil, bookResources: BookResource? = nil, summaryBook: SummaryBook? = nil, bookClub: BookClub? = nil, influencerGuideReading: InfluencerGuideReading? = nil, audioBook: AudioBook? = nil, liveReplay: LiveReplay? = nil) {
                    self.init(unsafeResultMap: ["__typename": "Good", "hasFree": hasFree, "isFree": isFree, "id": id, "goodsNum": goodsNum, "typeName": typeName, "desc": desc, "descImage": descImage, "descType": descType, "displayTime": displayTime, "name": name, "image": image, "crossImage": crossImage, "squareImage": squareImage, "type": type, "resId": resId, "ownerSum": ownerSum, "subName": subName, "bookAuthor": bookAuthor, "resAuthor": resAuthor, "isOnlyMainland": isOnlyMainland, "recommendation": recommendation, "book": book.flatMap { (value: Book) -> ResultMap in value.resultMap }, "videoBook": videoBook.flatMap { (value: VideoBook) -> ResultMap in value.resultMap }, "relatedPeople": relatedPeople.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, "price": price.flatMap { (value: Price) -> ResultMap in value.resultMap }, "course": course.flatMap { (value: Course) -> ResultMap in value.resultMap }, "entity": entity.flatMap { (value: Entity) -> ResultMap in value.resultMap }, "summaryAudioBook": summaryAudioBook.flatMap { (value: SummaryAudioBook) -> ResultMap in value.resultMap }, "bookResources": bookResources.flatMap { (value: BookResource) -> ResultMap in value.resultMap }, "summaryBook": summaryBook.flatMap { (value: SummaryBook) -> ResultMap in value.resultMap }, "bookClub": bookClub.flatMap { (value: BookClub) -> ResultMap in value.resultMap }, "influencerGuideReading": influencerGuideReading.flatMap { (value: InfluencerGuideReading) -> ResultMap in value.resultMap }, "audioBook": audioBook.flatMap { (value: AudioBook) -> ResultMap in value.resultMap }, "liveReplay": liveReplay.flatMap { (value: LiveReplay) -> ResultMap in value.resultMap }])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// 是否有免费试听
                  public var hasFree: Bool? {
                    get {
                      return resultMap["hasFree"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "hasFree")
                    }
                  }

                  /// 是否免费
                  public var isFree: Bool? {
                    get {
                      return resultMap["isFree"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isFree")
                    }
                  }

                  public var id: Int? {
                    get {
                      return resultMap["id"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  /// 商品编号
                  public var goodsNum: String? {
                    get {
                      return resultMap["goodsNum"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "goodsNum")
                    }
                  }

                  /// 角标名称
                  public var typeName: String? {
                    get {
                      return resultMap["typeName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "typeName")
                    }
                  }

                  /// 商品描述
                  public var desc: String? {
                    get {
                      return resultMap["desc"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "desc")
                    }
                  }

                  /// 商品简介图片
                  public var descImage: String? {
                    get {
                      return resultMap["descImage"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "descImage")
                    }
                  }

                  /// 商品描述类型 1展示文本简介 2展示图片简介（descImage）
                  public var descType: Int? {
                    get {
                      return resultMap["descType"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "descType")
                    }
                  }

                  /// 前端展示时间
                  public var displayTime: Int? {
                    get {
                      return resultMap["displayTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "displayTime")
                    }
                  }

                  /// 商品名称
                  public var name: String? {
                    get {
                      return resultMap["name"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "name")
                    }
                  }

                  /// 商品图片
                  public var image: String? {
                    get {
                      return resultMap["image"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "image")
                    }
                  }

                  /// 商品横图片
                  public var crossImage: String? {
                    get {
                      return resultMap["crossImage"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "crossImage")
                    }
                  }

                  /// 方图
                  public var squareImage: String? {
                    get {
                      return resultMap["squareImage"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "squareImage")
                    }
                  }

                  /// 商品类型
                  public var type: String? {
                    get {
                      return resultMap["type"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "type")
                    }
                  }

                  /// 相关资源ID
                  public var resId: Int? {
                    get {
                      return resultMap["resId"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "resId")
                    }
                  }

                  /// 订阅数
                  public var ownerSum: Int? {
                    get {
                      return resultMap["ownerSum"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "ownerSum")
                    }
                  }

                  /// 商品副名称
                  public var subName: String? {
                    get {
                      return resultMap["subName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "subName")
                    }
                  }

                  /// 图书作者
                  public var bookAuthor: String? {
                    get {
                      return resultMap["bookAuthor"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "bookAuthor")
                    }
                  }

                  /// 关联作者
                  public var resAuthor: String? {
                    get {
                      return resultMap["resAuthor"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "resAuthor")
                    }
                  }

                  /// 是否只允许中国大陆购买
                  public var isOnlyMainland: Bool? {
                    get {
                      return resultMap["isOnlyMainland"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isOnlyMainland")
                    }
                  }

                  /// 编辑荐语
                  public var recommendation: String? {
                    get {
                      return resultMap["recommendation"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "recommendation")
                    }
                  }

                  /// 图书详情
                  public var book: Book? {
                    get {
                      return (resultMap["book"] as? ResultMap).flatMap { Book(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "book")
                    }
                  }

                  /// 视频读书详情 仅当商品类型为videoBook
                  public var videoBook: VideoBook? {
                    get {
                      return (resultMap["videoBook"] as? ResultMap).flatMap { VideoBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "videoBook")
                    }
                  }

                  /// 关联人物信息列表
                  public var relatedPeople: [RelatedPerson?]? {
                    get {
                      return (resultMap["relatedPeople"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [RelatedPerson?] in value.map { (value: ResultMap?) -> RelatedPerson? in value.flatMap { (value: ResultMap) -> RelatedPerson in RelatedPerson(unsafeResultMap: value) } } }
                    }
                    set {
                      resultMap.updateValue(newValue.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, forKey: "relatedPeople")
                    }
                  }

                  /// 价格信息
                  public var price: Price? {
                    get {
                      return (resultMap["price"] as? ResultMap).flatMap { Price(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "price")
                    }
                  }

                  /// 课程详情 仅当商品类型为course
                  public var course: Course? {
                    get {
                      return (resultMap["course"] as? ResultMap).flatMap { Course(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "course")
                    }
                  }

                  /// 实物商品属性
                  public var entity: Entity? {
                    get {
                      return (resultMap["entity"] as? ResultMap).flatMap { Entity(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "entity")
                    }
                  }

                  /// 好书快听阅读时差详情 仅当商品类型为summaryAudioBook或globalSummaryAudioBook
                  public var summaryAudioBook: SummaryAudioBook? {
                    get {
                      return (resultMap["summaryAudioBook"] as? ResultMap).flatMap { SummaryAudioBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "summaryAudioBook")
                    }
                  }

                  /// 编辑荐书相关资源 仅当商品类型为bookHomepage
                  public var bookResources: BookResource? {
                    get {
                      return (resultMap["bookResources"] as? ResultMap).flatMap { BookResource(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "bookResources")
                    }
                  }

                  /// 极简全球阅读详情 仅当商品类型为globalSummaryBook
                  public var summaryBook: SummaryBook? {
                    get {
                      return (resultMap["summaryBook"] as? ResultMap).flatMap { SummaryBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "summaryBook")
                    }
                  }

                  /// 大咖领读详情 仅当商品类型为bookClub
                  public var bookClub: BookClub? {
                    get {
                      return (resultMap["bookClub"] as? ResultMap).flatMap { BookClub(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "bookClub")
                    }
                  }

                  /// 新大咖领读详情 仅当商品类型为influencerGuideReading
                  public var influencerGuideReading: InfluencerGuideReading? {
                    get {
                      return (resultMap["influencerGuideReading"] as? ResultMap).flatMap { InfluencerGuideReading(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "influencerGuideReading")
                    }
                  }

                  /// 有声书详情 仅当商品类型为audioBook
                  public var audioBook: AudioBook? {
                    get {
                      return (resultMap["audioBook"] as? ResultMap).flatMap { AudioBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "audioBook")
                    }
                  }

                  /// 视频读书详情 仅当商品类型为liveReplay
                  public var liveReplay: LiveReplay? {
                    get {
                      return (resultMap["liveReplay"] as? ResultMap).flatMap { LiveReplay(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "liveReplay")
                    }
                  }

                  public struct Book: GraphQLSelectionSet {
                    public static let possibleTypes = ["Book"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("cover", type: .scalar(String.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, cover: String? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Book", "id": id, "cover": cover])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
                      }
                    }

                    /// 封面
                    public var cover: String? {
                      get {
                        return resultMap["cover"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "cover")
                      }
                    }
                  }

                  public struct VideoBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["VideoBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("image", type: .scalar(String.self)),
                      GraphQLField("desc", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, image: String? = nil, desc: String? = nil, duration: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "VideoBook", "id": id, "name": name, "image": image, "desc": desc, "duration": duration])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 图片
                    public var image: String? {
                      get {
                        return resultMap["image"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "image")
                      }
                    }

                    /// 描述
                    public var desc: String? {
                      get {
                        return resultMap["desc"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "desc")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }
                  }

                  public struct RelatedPerson: GraphQLSelectionSet {
                    public static let possibleTypes = ["RelatedPerson"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("image", type: .scalar(String.self)),
                      GraphQLField("intro", type: .scalar(String.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, image: String? = nil, intro: String? = nil) {
                      self.init(unsafeResultMap: ["__typename": "RelatedPerson", "id": id, "name": name, "image": image, "intro": intro])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 图片
                    public var image: String? {
                      get {
                        return resultMap["image"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "image")
                      }
                    }

                    /// 简介
                    public var intro: String? {
                      get {
                        return resultMap["intro"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "intro")
                      }
                    }
                  }

                  public struct Price: GraphQLSelectionSet {
                    public static let possibleTypes = ["Price"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("selling", type: .scalar(Int.self)),
                      GraphQLField("userSelling", type: .scalar(Int.self)),
                      GraphQLField("normal", type: .scalar(Int.self)),
                      GraphQLField("isSale", type: .scalar(Bool.self)),
                      GraphQLField("userSellingWithRequiredExtraGoods", type: .scalar(Int.self)),
                      GraphQLField("promotionPrice", type: .scalar(Int.self)),
                      GraphQLField("saleLeftSeconds", type: .scalar(Int.self)),
                      GraphQLField("promotionPeriod", type: .object(PromotionPeriod.selections)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, selling: Int? = nil, userSelling: Int? = nil, normal: Int? = nil, isSale: Bool? = nil, userSellingWithRequiredExtraGoods: Int? = nil, promotionPrice: Int? = nil, saleLeftSeconds: Int? = nil, promotionPeriod: PromotionPeriod? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Price", "id": id, "selling": selling, "userSelling": userSelling, "normal": normal, "isSale": isSale, "userSellingWithRequiredExtraGoods": userSellingWithRequiredExtraGoods, "promotionPrice": promotionPrice, "saleLeftSeconds": saleLeftSeconds, "promotionPeriod": promotionPeriod.flatMap { (value: PromotionPeriod) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
                      }
                    }

                    /// 售价
                    public var selling: Int? {
                      get {
                        return resultMap["selling"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "selling")
                      }
                    }

                    /// 个人售价
                    public var userSelling: Int? {
                      get {
                        return resultMap["userSelling"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "userSelling")
                      }
                    }

                    /// 原价
                    public var normal: Int? {
                      get {
                        return resultMap["normal"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "normal")
                      }
                    }

                    /// 当前有特价或限时活动价
                    public var isSale: Bool? {
                      get {
                        return resultMap["isSale"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isSale")
                      }
                    }

                    /// 最低需要支付金额（必选加价购）
                    public var userSellingWithRequiredExtraGoods: Int? {
                      get {
                        return resultMap["userSellingWithRequiredExtraGoods"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "userSellingWithRequiredExtraGoods")
                      }
                    }

                    /// 原价
                    public var promotionPrice: Int? {
                      get {
                        return resultMap["promotionPrice"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "promotionPrice")
                      }
                    }

                    /// 特价剩余秒数
                    public var saleLeftSeconds: Int? {
                      get {
                        return resultMap["saleLeftSeconds"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "saleLeftSeconds")
                      }
                    }

                    /// 促销活动时间段
                    public var promotionPeriod: PromotionPeriod? {
                      get {
                        return (resultMap["promotionPeriod"] as? ResultMap).flatMap { PromotionPeriod(unsafeResultMap: $0) }
                      }
                      set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "promotionPeriod")
                      }
                    }

                    public struct PromotionPeriod: GraphQLSelectionSet {
                      public static let possibleTypes = ["PromotionPeriod"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("startTime", type: .scalar(Int.self)),
                        GraphQLField("endTime", type: .scalar(Int.self)),
                        GraphQLField("status", type: .scalar(PromotionPeriodStatus.self)),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("promotion", type: .object(Promotion.selections)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(startTime: Int? = nil, endTime: Int? = nil, status: PromotionPeriodStatus? = nil, id: Int? = nil, promotion: Promotion? = nil) {
                        self.init(unsafeResultMap: ["__typename": "PromotionPeriod", "startTime": startTime, "endTime": endTime, "status": status, "id": id, "promotion": promotion.flatMap { (value: Promotion) -> ResultMap in value.resultMap }])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      /// 开始时间
                      public var startTime: Int? {
                        get {
                          return resultMap["startTime"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "startTime")
                        }
                      }

                      /// 结束时间
                      public var endTime: Int? {
                        get {
                          return resultMap["endTime"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "endTime")
                        }
                      }

                      /// 促销活动时间段状态
                      public var status: PromotionPeriodStatus? {
                        get {
                          return resultMap["status"] as? PromotionPeriodStatus
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "status")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
                        }
                      }

                      /// 促销活动
                      public var promotion: Promotion? {
                        get {
                          return (resultMap["promotion"] as? ResultMap).flatMap { Promotion(unsafeResultMap: $0) }
                        }
                        set {
                          resultMap.updateValue(newValue?.resultMap, forKey: "promotion")
                        }
                      }

                      public struct Promotion: GraphQLSelectionSet {
                        public static let possibleTypes = ["Promotion"]

                        public static let selections: [GraphQLSelection] = [
                          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                          GraphQLField("id", type: .scalar(Int.self)),
                          GraphQLField("isTimeLimit", type: .scalar(Bool.self)),
                          GraphQLField("periodStartTime", type: .scalar(Int.self)),
                          GraphQLField("periodEndTime", type: .scalar(Int.self)),
                          GraphQLField("soldQuantity", type: .scalar(Int.self)),
                          GraphQLField("limitQuantity", type: .scalar(Int.self)),
                          GraphQLField("status", type: .scalar(PromotionStatus.self)),
                        ]

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                          self.resultMap = unsafeResultMap
                        }

                        public init(id: Int? = nil, isTimeLimit: Bool? = nil, periodStartTime: Int? = nil, periodEndTime: Int? = nil, soldQuantity: Int? = nil, limitQuantity: Int? = nil, status: PromotionStatus? = nil) {
                          self.init(unsafeResultMap: ["__typename": "Promotion", "id": id, "isTimeLimit": isTimeLimit, "periodStartTime": periodStartTime, "periodEndTime": periodEndTime, "soldQuantity": soldQuantity, "limitQuantity": limitQuantity, "status": status])
                        }

                        public var __typename: String {
                          get {
                            return resultMap["__typename"]! as! String
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                          }
                        }

                        public var id: Int? {
                          get {
                            return resultMap["id"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "id")
                          }
                        }

                        /// 是否限时活动
                        public var isTimeLimit: Bool? {
                          get {
                            return resultMap["isTimeLimit"] as? Bool
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "isTimeLimit")
                          }
                        }

                        /// 预计时间段开始时间 没有正在进行的时间段并且有未开始的时间段时有值
                        public var periodStartTime: Int? {
                          get {
                            return resultMap["periodStartTime"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "periodStartTime")
                          }
                        }

                        /// 预计时间段结束时间 当前有进行中的时间段并且其有结束时间
                        public var periodEndTime: Int? {
                          get {
                            return resultMap["periodEndTime"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "periodEndTime")
                          }
                        }

                        /// 售出数量
                        public var soldQuantity: Int? {
                          get {
                            return resultMap["soldQuantity"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "soldQuantity")
                          }
                        }

                        /// 总数量（限量活动才有值）
                        public var limitQuantity: Int? {
                          get {
                            return resultMap["limitQuantity"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "limitQuantity")
                          }
                        }

                        /// 促销活动状态
                        public var status: PromotionStatus? {
                          get {
                            return resultMap["status"] as? PromotionStatus
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "status")
                          }
                        }
                      }
                    }
                  }

                  public struct Course: GraphQLSelectionSet {
                    public static let possibleTypes = ["Course"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("author", type: .scalar(String.self)),
                      GraphQLField("isFinished", type: .scalar(Bool.self)),
                      GraphQLField("endDate", type: .scalar(String.self)),
                      GraphQLField("type", type: .scalar(CourseType.self)),
                      GraphQLField("chapters", type: .list(.object(Chapter.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(author: String? = nil, isFinished: Bool? = nil, endDate: String? = nil, type: CourseType? = nil, chapters: [Chapter?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Course", "author": author, "isFinished": isFinished, "endDate": endDate, "type": type, "chapters": chapters.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 主讲人
                    public var author: String? {
                      get {
                        return resultMap["author"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "author")
                      }
                    }

                    /// 是否已完结
                    public var isFinished: Bool? {
                      get {
                        return resultMap["isFinished"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFinished")
                      }
                    }

                    /// 预计完成时间
                    public var endDate: String? {
                      get {
                        return resultMap["endDate"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "endDate")
                      }
                    }

                    /// 类型
                    public var type: CourseType? {
                      get {
                        return resultMap["type"] as? CourseType
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "type")
                      }
                    }

                    /// 章节列表
                    public var chapters: [Chapter?]? {
                      get {
                        return (resultMap["chapters"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Chapter?] in value.map { (value: ResultMap?) -> Chapter? in value.flatMap { (value: ResultMap) -> Chapter in Chapter(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }, forKey: "chapters")
                      }
                    }

                    public struct Chapter: GraphQLSelectionSet {
                      public static let possibleTypes = ["CourseChapter"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("hasDesc", type: .scalar(Bool.self)),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("url", type: .scalar(String.self)),
                        GraphQLField("duration", type: .scalar(Int.self)),
                        GraphQLField("isFree", type: .scalar(Bool.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(hasDesc: Bool? = nil, id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "CourseChapter", "hasDesc": hasDesc, "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      /// 是否有文字稿
                      public var hasDesc: Bool? {
                        get {
                          return resultMap["hasDesc"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "hasDesc")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
                        }
                      }

                      /// 标题
                      public var name: String? {
                        get {
                          return resultMap["name"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "name")
                        }
                      }

                      /// 资源链接 仅当isFree为true或query为userGood并且才有可能返回
                      public var url: String? {
                        get {
                          return resultMap["url"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "url")
                        }
                      }

                      /// 时长（秒）
                      public var duration: Int? {
                        get {
                          return resultMap["duration"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "duration")
                        }
                      }

                      /// 是否免费
                      public var isFree: Bool? {
                        get {
                          return resultMap["isFree"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isFree")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct Entity: GraphQLSelectionSet {
                    public static let possibleTypes = ["Entity"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("stock", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(stock: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Entity", "stock": stock])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 库存数
                    public var stock: Int? {
                      get {
                        return resultMap["stock"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "stock")
                      }
                    }
                  }

                  public struct SummaryAudioBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["SummaryAudioBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("cover", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                      GraphQLField("url", type: .scalar(String.self)),
                      GraphQLField("id", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(name: String? = nil, cover: String? = nil, duration: Int? = nil, url: String? = nil, id: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "SummaryAudioBook", "name": name, "cover": cover, "duration": duration, "url": url, "id": id])
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

                    /// 封面图
                    public var cover: String? {
                      get {
                        return resultMap["cover"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "cover")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }

                    /// 资源链接
                    public var url: String? {
                      get {
                        return resultMap["url"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "url")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
                      }
                    }
                  }

                  public struct BookResource: GraphQLSelectionSet {
                    public static let possibleTypes = ["BookResources"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("briefAudio", type: .object(BriefAudio.selections)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(briefAudio: BriefAudio? = nil) {
                      self.init(unsafeResultMap: ["__typename": "BookResources", "briefAudio": briefAudio.flatMap { (value: BriefAudio) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 一分钟简介
                    public var briefAudio: BriefAudio? {
                      get {
                        return (resultMap["briefAudio"] as? ResultMap).flatMap { BriefAudio(unsafeResultMap: $0) }
                      }
                      set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "briefAudio")
                      }
                    }

                    public struct BriefAudio: GraphQLSelectionSet {
                      public static let possibleTypes = ["Audio"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("desc", type: .scalar(String.self)),
                        GraphQLField("content", type: .scalar(String.self)),
                        GraphQLField("url", type: .scalar(String.self)),
                        GraphQLField("duration", type: .scalar(Int.self)),
                        GraphQLField("isFree", type: .scalar(Bool.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, desc: String? = nil, content: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "desc": desc, "content": content, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
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

                      /// 描述
                      public var desc: String? {
                        get {
                          return resultMap["desc"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "desc")
                        }
                      }

                      /// 文字稿
                      public var content: String? {
                        get {
                          return resultMap["content"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "content")
                        }
                      }

                      /// 资源链接
                      public var url: String? {
                        get {
                          return resultMap["url"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "url")
                        }
                      }

                      /// 时长（秒）
                      public var duration: Int? {
                        get {
                          return resultMap["duration"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "duration")
                        }
                      }

                      /// 是否免费
                      public var isFree: Bool? {
                        get {
                          return resultMap["isFree"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isFree")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct SummaryBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["SummaryBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("content", type: .scalar(String.self)),
                      GraphQLField("chapterList", type: .list(.object(ChapterList.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(content: String? = nil, chapterList: [ChapterList?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "SummaryBook", "content": content, "chapterList": chapterList.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 内容
                    public var content: String? {
                      get {
                        return resultMap["content"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "content")
                      }
                    }

                    /// 电子书章节
                    public var chapterList: [ChapterList?]? {
                      get {
                        return (resultMap["chapterList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterList?] in value.map { (value: ResultMap?) -> ChapterList? in value.flatMap { (value: ResultMap) -> ChapterList in ChapterList(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }, forKey: "chapterList")
                      }
                    }

                    public struct ChapterList: GraphQLSelectionSet {
                      public static let possibleTypes = ["EpubChapter"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("epubPath", type: .scalar(String.self)),
                        GraphQLField("num", type: .scalar(Int.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, epubPath: String? = nil, num: Int? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "EpubChapter", "id": id, "name": name, "epubPath": epubPath, "num": num, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
                        }
                      }

                      /// 章节名称
                      public var name: String? {
                        get {
                          return resultMap["name"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "name")
                        }
                      }

                      /// epub路径
                      public var epubPath: String? {
                        get {
                          return resultMap["epubPath"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "epubPath")
                        }
                      }

                      /// 章节序号
                      public var num: Int? {
                        get {
                          return resultMap["num"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "num")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct BookClub: GraphQLSelectionSet {
                    public static let possibleTypes = ["BookClub"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("author", type: .scalar(String.self)),
                      GraphQLField("desc", type: .scalar(String.self)),
                      GraphQLField("content", type: .scalar(String.self)),
                      GraphQLField("cover", type: .scalar(String.self)),
                      GraphQLField("url", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, author: String? = nil, desc: String? = nil, content: String? = nil, cover: String? = nil, url: String? = nil, duration: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "BookClub", "id": id, "name": name, "author": author, "desc": desc, "content": content, "cover": cover, "url": url, "duration": duration])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 音频作者
                    public var author: String? {
                      get {
                        return resultMap["author"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "author")
                      }
                    }

                    /// 描述
                    public var desc: String? {
                      get {
                        return resultMap["desc"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "desc")
                      }
                    }

                    /// 文字稿
                    public var content: String? {
                      get {
                        return resultMap["content"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "content")
                      }
                    }

                    /// 封面图
                    public var cover: String? {
                      get {
                        return resultMap["cover"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "cover")
                      }
                    }

                    /// 资源链接
                    public var url: String? {
                      get {
                        return resultMap["url"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "url")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }
                  }

                  public struct InfluencerGuideReading: GraphQLSelectionSet {
                    public static let possibleTypes = ["InfluencerGuideReading"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("headerImage", type: .scalar(String.self)),
                      GraphQLField("wechatGroupQrcode", type: .scalar(String.self)),
                      GraphQLField("isFinished", type: .scalar(Bool.self)),
                      GraphQLField("endTime", type: .scalar(Int.self)),
                      GraphQLField("albums", type: .list(.object(Album.selections))),
                      GraphQLField("lecturers", type: .list(.object(Lecturer.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(headerImage: String? = nil, wechatGroupQrcode: String? = nil, isFinished: Bool? = nil, endTime: Int? = nil, albums: [Album?]? = nil, lecturers: [Lecturer?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "InfluencerGuideReading", "headerImage": headerImage, "wechatGroupQrcode": wechatGroupQrcode, "isFinished": isFinished, "endTime": endTime, "albums": albums.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, "lecturers": lecturers.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 头图
                    public var headerImage: String? {
                      get {
                        return resultMap["headerImage"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "headerImage")
                      }
                    }

                    /// 购买后群二维码
                    public var wechatGroupQrcode: String? {
                      get {
                        return resultMap["wechatGroupQrcode"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "wechatGroupQrcode")
                      }
                    }

                    /// 是否已完结
                    public var isFinished: Bool? {
                      get {
                        return resultMap["isFinished"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFinished")
                      }
                    }

                    /// 预计完成时间
                    public var endTime: Int? {
                      get {
                        return resultMap["endTime"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "endTime")
                      }
                    }

                    /// 专辑
                    public var albums: [Album?]? {
                      get {
                        return (resultMap["albums"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Album?] in value.map { (value: ResultMap?) -> Album? in value.flatMap { (value: ResultMap) -> Album in Album(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, forKey: "albums")
                      }
                    }

                    /// 主讲人列表
                    public var lecturers: [Lecturer?]? {
                      get {
                        return (resultMap["lecturers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Lecturer?] in value.map { (value: ResultMap?) -> Lecturer? in value.flatMap { (value: ResultMap) -> Lecturer in Lecturer(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }, forKey: "lecturers")
                      }
                    }

                    public struct Album: GraphQLSelectionSet {
                      public static let possibleTypes = ["InfluencerGuideReadingAlbum"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("image", type: .scalar(String.self)),
                        GraphQLField("sections", type: .list(.object(Section.selections))),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, image: String? = nil, sections: [Section?]? = nil) {
                        self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingAlbum", "id": id, "name": name, "image": image, "sections": sections.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
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

                      /// 封面图
                      public var image: String? {
                        get {
                          return resultMap["image"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "image")
                        }
                      }

                      /// 分片列表
                      public var sections: [Section?]? {
                        get {
                          return (resultMap["sections"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Section?] in value.map { (value: ResultMap?) -> Section? in value.flatMap { (value: ResultMap) -> Section in Section(unsafeResultMap: value) } } }
                        }
                        set {
                          resultMap.updateValue(newValue.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }, forKey: "sections")
                        }
                      }

                      public struct Section: GraphQLSelectionSet {
                        public static let possibleTypes = ["InfluencerGuideReadingSection"]

                        public static let selections: [GraphQLSelection] = [
                          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                          GraphQLField("id", type: .scalar(Int.self)),
                          GraphQLField("name", type: .scalar(String.self)),
                          GraphQLField("audios", type: .list(.object(Audio.selections))),
                        ]

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                          self.resultMap = unsafeResultMap
                        }

                        public init(id: Int? = nil, name: String? = nil, audios: [Audio?]? = nil) {
                          self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingSection", "id": id, "name": name, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
                        }

                        public var __typename: String {
                          get {
                            return resultMap["__typename"]! as! String
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                          }
                        }

                        public var id: Int? {
                          get {
                            return resultMap["id"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "id")
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

                        /// 音频列表
                        public var audios: [Audio?]? {
                          get {
                            return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                          }
                          set {
                            resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                          }
                        }

                        public struct Audio: GraphQLSelectionSet {
                          public static let possibleTypes = ["Audio"]

                          public static let selections: [GraphQLSelection] = [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .scalar(Int.self)),
                            GraphQLField("name", type: .scalar(String.self)),
                            GraphQLField("url", type: .scalar(String.self)),
                            GraphQLField("duration", type: .scalar(Int.self)),
                            GraphQLField("isFree", type: .scalar(Bool.self)),
                            GraphQLField("isLast", type: .scalar(Bool.self)),
                          ]

                          public private(set) var resultMap: ResultMap

                          public init(unsafeResultMap: ResultMap) {
                            self.resultMap = unsafeResultMap
                          }

                          public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                            self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                          }

                          public var __typename: String {
                            get {
                              return resultMap["__typename"]! as! String
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "__typename")
                            }
                          }

                          public var id: Int? {
                            get {
                              return resultMap["id"] as? Int
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "id")
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

                          /// 资源链接
                          public var url: String? {
                            get {
                              return resultMap["url"] as? String
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "url")
                            }
                          }

                          /// 时长（秒）
                          public var duration: Int? {
                            get {
                              return resultMap["duration"] as? Int
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "duration")
                            }
                          }

                          /// 是否免费
                          public var isFree: Bool? {
                            get {
                              return resultMap["isFree"] as? Bool
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "isFree")
                            }
                          }

                          /// 是否最后一章节
                          public var isLast: Bool? {
                            get {
                              return resultMap["isLast"] as? Bool
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "isLast")
                            }
                          }
                        }
                      }
                    }

                    public struct Lecturer: GraphQLSelectionSet {
                      public static let possibleTypes = ["RelatedPerson"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("intro", type: .scalar(String.self)),
                        GraphQLField("image", type: .scalar(String.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(name: String? = nil, intro: String? = nil, image: String? = nil) {
                        self.init(unsafeResultMap: ["__typename": "RelatedPerson", "name": name, "intro": intro, "image": image])
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

                      /// 简介
                      public var intro: String? {
                        get {
                          return resultMap["intro"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "intro")
                        }
                      }

                      /// 图片
                      public var image: String? {
                        get {
                          return resultMap["image"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "image")
                        }
                      }
                    }
                  }

                  public struct AudioBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["AudioBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("isFinished", type: .scalar(Bool.self)),
                      GraphQLField("endDate", type: .scalar(String.self)),
                      GraphQLField("audios", type: .list(.object(Audio.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(isFinished: Bool? = nil, endDate: String? = nil, audios: [Audio?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "AudioBook", "isFinished": isFinished, "endDate": endDate, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 是否已完结
                    public var isFinished: Bool? {
                      get {
                        return resultMap["isFinished"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFinished")
                      }
                    }

                    /// 预计完成时间
                    public var endDate: String? {
                      get {
                        return resultMap["endDate"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "endDate")
                      }
                    }

                    /// 音频列表
                    public var audios: [Audio?]? {
                      get {
                        return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                      }
                    }

                    public struct Audio: GraphQLSelectionSet {
                      public static let possibleTypes = ["Audio"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("url", type: .scalar(String.self)),
                        GraphQLField("duration", type: .scalar(Int.self)),
                        GraphQLField("isFree", type: .scalar(Bool.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
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

                      /// 资源链接
                      public var url: String? {
                        get {
                          return resultMap["url"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "url")
                        }
                      }

                      /// 时长（秒）
                      public var duration: Int? {
                        get {
                          return resultMap["duration"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "duration")
                        }
                      }

                      /// 是否免费
                      public var isFree: Bool? {
                        get {
                          return resultMap["isFree"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isFree")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct LiveReplay: GraphQLSelectionSet {
                    public static let possibleTypes = ["LiveReplay"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("image", type: .scalar(String.self)),
                      GraphQLField("videoUrl", type: .scalar(String.self)),
                      GraphQLField("desc", type: .scalar(String.self)),
                      GraphQLField("content", type: .scalar(String.self)),
                      GraphQLField("lecturer", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, image: String? = nil, videoUrl: String? = nil, desc: String? = nil, content: String? = nil, lecturer: String? = nil, duration: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "LiveReplay", "id": id, "name": name, "image": image, "videoUrl": videoUrl, "desc": desc, "content": content, "lecturer": lecturer, "duration": duration])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 图片
                    public var image: String? {
                      get {
                        return resultMap["image"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "image")
                      }
                    }

                    /// 视频路径
                    public var videoUrl: String? {
                      get {
                        return resultMap["videoUrl"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "videoUrl")
                      }
                    }

                    /// 说明
                    public var desc: String? {
                      get {
                        return resultMap["desc"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "desc")
                      }
                    }

                    /// 简介（TEXT）
                    public var content: String? {
                      get {
                        return resultMap["content"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "content")
                      }
                    }

                    /// 主讲人
                    public var lecturer: String? {
                      get {
                        return resultMap["lecturer"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "lecturer")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }
                  }
                }
              }
            }
          }
        }

        public struct RecommendUserGoodsByGood: GraphQLSelectionSet {
          public static let possibleTypes = ["UserGood"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("hasRight", type: .scalar(Bool.self)),
            GraphQLField("hasPackageRight", type: .scalar(Bool.self)),
            GraphQLField("studyProgress", type: .object(StudyProgress.selections)),
            GraphQLField("good", type: .object(Good.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(hasRight: Bool? = nil, hasPackageRight: Bool? = nil, studyProgress: StudyProgress? = nil, good: Good? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserGood", "hasRight": hasRight, "hasPackageRight": hasPackageRight, "studyProgress": studyProgress.flatMap { (value: StudyProgress) -> ResultMap in value.resultMap }, "good": good.flatMap { (value: Good) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// 是否有权限
          public var hasRight: Bool? {
            get {
              return resultMap["hasRight"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasRight")
            }
          }

          /// 是否有畅享权限，仅query userGood时返回
          public var hasPackageRight: Bool? {
            get {
              return resultMap["hasPackageRight"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasPackageRight")
            }
          }

          /// 学习进度信息
          public var studyProgress: StudyProgress? {
            get {
              return (resultMap["studyProgress"] as? ResultMap).flatMap { StudyProgress(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "studyProgress")
            }
          }

          /// 商品信息
          public var good: Good? {
            get {
              return (resultMap["good"] as? ResultMap).flatMap { Good(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "good")
            }
          }

          public struct StudyProgress: GraphQLSelectionSet {
            public static let possibleTypes = ["StudyProgress"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("chapterId", type: .scalar(Int.self)),
              GraphQLField("percent", type: .scalar(Int.self)),
              GraphQLField("currentTime", type: .scalar(Int.self)),
              GraphQLField("isEnd", type: .scalar(Bool.self)),
              GraphQLField("chapterName", type: .scalar(String.self)),
              GraphQLField("chapterStudyProgressList", type: .list(.object(ChapterStudyProgressList.selections))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(chapterId: Int? = nil, percent: Int? = nil, currentTime: Int? = nil, isEnd: Bool? = nil, chapterName: String? = nil, chapterStudyProgressList: [ChapterStudyProgressList?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "StudyProgress", "chapterId": chapterId, "percent": percent, "currentTime": currentTime, "isEnd": isEnd, "chapterName": chapterName, "chapterStudyProgressList": chapterStudyProgressList.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 章节ID
            public var chapterId: Int? {
              get {
                return resultMap["chapterId"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "chapterId")
              }
            }

            /// 百分比进度（0-10000整数）
            public var percent: Int? {
              get {
                return resultMap["percent"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "percent")
              }
            }

            /// 当前播放时长
            public var currentTime: Int? {
              get {
                return resultMap["currentTime"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "currentTime")
              }
            }

            /// 是否已学到最后一章（和数据库isEnd不一样）
            public var isEnd: Bool? {
              get {
                return resultMap["isEnd"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isEnd")
              }
            }

            /// 章节名称
            public var chapterName: String? {
              get {
                return resultMap["chapterName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "chapterName")
              }
            }

            /// 章节学习进度
            public var chapterStudyProgressList: [ChapterStudyProgressList?]? {
              get {
                return (resultMap["chapterStudyProgressList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterStudyProgressList?] in value.map { (value: ResultMap?) -> ChapterStudyProgressList? in value.flatMap { (value: ResultMap) -> ChapterStudyProgressList in ChapterStudyProgressList(unsafeResultMap: value) } } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }, forKey: "chapterStudyProgressList")
              }
            }

            public struct ChapterStudyProgressList: GraphQLSelectionSet {
              public static let possibleTypes = ["ChapterStudyProgress"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("chapterId", type: .scalar(Int.self)),
                GraphQLField("percent", type: .scalar(Int.self)),
                GraphQLField("currentTime", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(chapterId: Int? = nil, percent: Int? = nil, currentTime: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "ChapterStudyProgress", "chapterId": chapterId, "percent": percent, "currentTime": currentTime])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 章节ID
              public var chapterId: Int? {
                get {
                  return resultMap["chapterId"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "chapterId")
                }
              }

              /// 百分比进度（0-10000整数）
              public var percent: Int? {
                get {
                  return resultMap["percent"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "percent")
                }
              }

              /// 当前播放时长
              public var currentTime: Int? {
                get {
                  return resultMap["currentTime"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "currentTime")
                }
              }
            }
          }

          public struct Good: GraphQLSelectionSet {
            public static let possibleTypes = ["Good"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("hasFree", type: .scalar(Bool.self)),
              GraphQLField("isFree", type: .scalar(Bool.self)),
              GraphQLField("id", type: .scalar(Int.self)),
              GraphQLField("goodsNum", type: .scalar(String.self)),
              GraphQLField("typeName", type: .scalar(String.self)),
              GraphQLField("desc", type: .scalar(String.self)),
              GraphQLField("descImage", type: .scalar(String.self)),
              GraphQLField("descType", type: .scalar(Int.self)),
              GraphQLField("displayTime", type: .scalar(Int.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("squareImage", type: .scalar(String.self)),
              GraphQLField("crossImage", type: .scalar(String.self)),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("resId", type: .scalar(Int.self)),
              GraphQLField("ownerSum", type: .scalar(Int.self)),
              GraphQLField("subName", type: .scalar(String.self)),
              GraphQLField("bookAuthor", type: .scalar(String.self)),
              GraphQLField("resAuthor", type: .scalar(String.self)),
              GraphQLField("isOnlyMainland", type: .scalar(Bool.self)),
              GraphQLField("recommendation", type: .scalar(String.self)),
              GraphQLField("packageDuration", type: .object(PackageDuration.selections)),
              GraphQLField("book", type: .object(Book.selections)),
              GraphQLField("videoBook", type: .object(VideoBook.selections)),
              GraphQLField("price", type: .object(Price.selections)),
              GraphQLField("relatedPeople", type: .list(.object(RelatedPerson.selections))),
              GraphQLField("course", type: .object(Course.selections)),
              GraphQLField("summaryAudioBook", type: .object(SummaryAudioBook.selections)),
              GraphQLField("bookResources", type: .object(BookResource.selections)),
              GraphQLField("summaryBook", type: .object(SummaryBook.selections)),
              GraphQLField("bookClub", type: .object(BookClub.selections)),
              GraphQLField("influencerGuideReading", type: .object(InfluencerGuideReading.selections)),
              GraphQLField("entity", type: .object(Entity.selections)),
              GraphQLField("audioBook", type: .object(AudioBook.selections)),
              GraphQLField("extraUserGoods", type: .list(.object(ExtraUserGood.selections))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(hasFree: Bool? = nil, isFree: Bool? = nil, id: Int? = nil, goodsNum: String? = nil, typeName: String? = nil, desc: String? = nil, descImage: String? = nil, descType: Int? = nil, displayTime: Int? = nil, name: String? = nil, image: String? = nil, squareImage: String? = nil, crossImage: String? = nil, type: String? = nil, resId: Int? = nil, ownerSum: Int? = nil, subName: String? = nil, bookAuthor: String? = nil, resAuthor: String? = nil, isOnlyMainland: Bool? = nil, recommendation: String? = nil, packageDuration: PackageDuration? = nil, book: Book? = nil, videoBook: VideoBook? = nil, price: Price? = nil, relatedPeople: [RelatedPerson?]? = nil, course: Course? = nil, summaryAudioBook: SummaryAudioBook? = nil, bookResources: BookResource? = nil, summaryBook: SummaryBook? = nil, bookClub: BookClub? = nil, influencerGuideReading: InfluencerGuideReading? = nil, entity: Entity? = nil, audioBook: AudioBook? = nil, extraUserGoods: [ExtraUserGood?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "Good", "hasFree": hasFree, "isFree": isFree, "id": id, "goodsNum": goodsNum, "typeName": typeName, "desc": desc, "descImage": descImage, "descType": descType, "displayTime": displayTime, "name": name, "image": image, "squareImage": squareImage, "crossImage": crossImage, "type": type, "resId": resId, "ownerSum": ownerSum, "subName": subName, "bookAuthor": bookAuthor, "resAuthor": resAuthor, "isOnlyMainland": isOnlyMainland, "recommendation": recommendation, "packageDuration": packageDuration.flatMap { (value: PackageDuration) -> ResultMap in value.resultMap }, "book": book.flatMap { (value: Book) -> ResultMap in value.resultMap }, "videoBook": videoBook.flatMap { (value: VideoBook) -> ResultMap in value.resultMap }, "price": price.flatMap { (value: Price) -> ResultMap in value.resultMap }, "relatedPeople": relatedPeople.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, "course": course.flatMap { (value: Course) -> ResultMap in value.resultMap }, "summaryAudioBook": summaryAudioBook.flatMap { (value: SummaryAudioBook) -> ResultMap in value.resultMap }, "bookResources": bookResources.flatMap { (value: BookResource) -> ResultMap in value.resultMap }, "summaryBook": summaryBook.flatMap { (value: SummaryBook) -> ResultMap in value.resultMap }, "bookClub": bookClub.flatMap { (value: BookClub) -> ResultMap in value.resultMap }, "influencerGuideReading": influencerGuideReading.flatMap { (value: InfluencerGuideReading) -> ResultMap in value.resultMap }, "entity": entity.flatMap { (value: Entity) -> ResultMap in value.resultMap }, "audioBook": audioBook.flatMap { (value: AudioBook) -> ResultMap in value.resultMap }, "extraUserGoods": extraUserGoods.flatMap { (value: [ExtraUserGood?]) -> [ResultMap?] in value.map { (value: ExtraUserGood?) -> ResultMap? in value.flatMap { (value: ExtraUserGood) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// 是否有免费试听
            public var hasFree: Bool? {
              get {
                return resultMap["hasFree"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "hasFree")
              }
            }

            /// 是否免费
            public var isFree: Bool? {
              get {
                return resultMap["isFree"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isFree")
              }
            }

            public var id: Int? {
              get {
                return resultMap["id"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// 商品编号
            public var goodsNum: String? {
              get {
                return resultMap["goodsNum"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "goodsNum")
              }
            }

            /// 角标名称
            public var typeName: String? {
              get {
                return resultMap["typeName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "typeName")
              }
            }

            /// 商品描述
            public var desc: String? {
              get {
                return resultMap["desc"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "desc")
              }
            }

            /// 商品简介图片
            public var descImage: String? {
              get {
                return resultMap["descImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "descImage")
              }
            }

            /// 商品描述类型 1展示文本简介 2展示图片简介（descImage）
            public var descType: Int? {
              get {
                return resultMap["descType"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "descType")
              }
            }

            /// 前端展示时间
            public var displayTime: Int? {
              get {
                return resultMap["displayTime"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "displayTime")
              }
            }

            /// 商品名称
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// 商品图片
            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }

            /// 方图
            public var squareImage: String? {
              get {
                return resultMap["squareImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "squareImage")
              }
            }

            /// 商品横图片
            public var crossImage: String? {
              get {
                return resultMap["crossImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "crossImage")
              }
            }

            /// 商品类型
            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            /// 相关资源ID
            public var resId: Int? {
              get {
                return resultMap["resId"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "resId")
              }
            }

            /// 订阅数
            public var ownerSum: Int? {
              get {
                return resultMap["ownerSum"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "ownerSum")
              }
            }

            /// 商品副名称
            public var subName: String? {
              get {
                return resultMap["subName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "subName")
              }
            }

            /// 图书作者
            public var bookAuthor: String? {
              get {
                return resultMap["bookAuthor"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "bookAuthor")
              }
            }

            /// 关联作者
            public var resAuthor: String? {
              get {
                return resultMap["resAuthor"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "resAuthor")
              }
            }

            /// 是否只允许中国大陆购买
            public var isOnlyMainland: Bool? {
              get {
                return resultMap["isOnlyMainland"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isOnlyMainland")
              }
            }

            /// 编辑荐语
            public var recommendation: String? {
              get {
                return resultMap["recommendation"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "recommendation")
              }
            }

            /// 畅享包商品信息 仅当type为package
            public var packageDuration: PackageDuration? {
              get {
                return (resultMap["packageDuration"] as? ResultMap).flatMap { PackageDuration(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "packageDuration")
              }
            }

            /// 图书详情
            public var book: Book? {
              get {
                return (resultMap["book"] as? ResultMap).flatMap { Book(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "book")
              }
            }

            /// 视频读书详情 仅当商品类型为videoBook
            public var videoBook: VideoBook? {
              get {
                return (resultMap["videoBook"] as? ResultMap).flatMap { VideoBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "videoBook")
              }
            }

            /// 价格信息
            public var price: Price? {
              get {
                return (resultMap["price"] as? ResultMap).flatMap { Price(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "price")
              }
            }

            /// 关联人物信息列表
            public var relatedPeople: [RelatedPerson?]? {
              get {
                return (resultMap["relatedPeople"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [RelatedPerson?] in value.map { (value: ResultMap?) -> RelatedPerson? in value.flatMap { (value: ResultMap) -> RelatedPerson in RelatedPerson(unsafeResultMap: value) } } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, forKey: "relatedPeople")
              }
            }

            /// 课程详情 仅当商品类型为course
            public var course: Course? {
              get {
                return (resultMap["course"] as? ResultMap).flatMap { Course(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "course")
              }
            }

            /// 好书快听阅读时差详情 仅当商品类型为summaryAudioBook或globalSummaryAudioBook
            public var summaryAudioBook: SummaryAudioBook? {
              get {
                return (resultMap["summaryAudioBook"] as? ResultMap).flatMap { SummaryAudioBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "summaryAudioBook")
              }
            }

            /// 编辑荐书相关资源 仅当商品类型为bookHomepage
            public var bookResources: BookResource? {
              get {
                return (resultMap["bookResources"] as? ResultMap).flatMap { BookResource(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "bookResources")
              }
            }

            /// 极简全球阅读详情 仅当商品类型为globalSummaryBook
            public var summaryBook: SummaryBook? {
              get {
                return (resultMap["summaryBook"] as? ResultMap).flatMap { SummaryBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "summaryBook")
              }
            }

            /// 大咖领读详情 仅当商品类型为bookClub
            public var bookClub: BookClub? {
              get {
                return (resultMap["bookClub"] as? ResultMap).flatMap { BookClub(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "bookClub")
              }
            }

            /// 新大咖领读详情 仅当商品类型为influencerGuideReading
            public var influencerGuideReading: InfluencerGuideReading? {
              get {
                return (resultMap["influencerGuideReading"] as? ResultMap).flatMap { InfluencerGuideReading(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "influencerGuideReading")
              }
            }

            /// 实物商品属性
            public var entity: Entity? {
              get {
                return (resultMap["entity"] as? ResultMap).flatMap { Entity(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "entity")
              }
            }

            /// 有声书详情 仅当商品类型为audioBook
            public var audioBook: AudioBook? {
              get {
                return (resultMap["audioBook"] as? ResultMap).flatMap { AudioBook(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "audioBook")
              }
            }

            /// 加价购商品
            public var extraUserGoods: [ExtraUserGood?]? {
              get {
                return (resultMap["extraUserGoods"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ExtraUserGood?] in value.map { (value: ResultMap?) -> ExtraUserGood? in value.flatMap { (value: ResultMap) -> ExtraUserGood in ExtraUserGood(unsafeResultMap: value) } } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [ExtraUserGood?]) -> [ResultMap?] in value.map { (value: ExtraUserGood?) -> ResultMap? in value.flatMap { (value: ExtraUserGood) -> ResultMap in value.resultMap } } }, forKey: "extraUserGoods")
              }
            }

            public struct PackageDuration: GraphQLSelectionSet {
              public static let possibleTypes = ["PackageDuration"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("package", type: .object(Package.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, package: Package? = nil) {
                self.init(unsafeResultMap: ["__typename": "PackageDuration", "id": id, "package": package.flatMap { (value: Package) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 期限Id
              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 畅享包信息
              public var package: Package? {
                get {
                  return (resultMap["package"] as? ResultMap).flatMap { Package(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "package")
                }
              }

              public struct Package: GraphQLSelectionSet {
                public static let possibleTypes = ["Package"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("isContainsEntity", type: .scalar(Bool.self)),
                  GraphQLField("type", type: .scalar(String.self)),
                  GraphQLField("id", type: .scalar(Int.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(isContainsEntity: Bool? = nil, type: String? = nil, id: Int? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Package", "isContainsEntity": isContainsEntity, "type": type, "id": id])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 是否包含实物
                public var isContainsEntity: Bool? {
                  get {
                    return resultMap["isContainsEntity"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isContainsEntity")
                  }
                }

                /// 类型
                public var type: String? {
                  get {
                    return resultMap["type"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "type")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }
              }
            }

            public struct Book: GraphQLSelectionSet {
              public static let possibleTypes = ["Book"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("cover", type: .scalar(String.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, cover: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "Book", "id": id, "cover": cover])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 封面
              public var cover: String? {
                get {
                  return resultMap["cover"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cover")
                }
              }
            }

            public struct VideoBook: GraphQLSelectionSet {
              public static let possibleTypes = ["VideoBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("image", type: .scalar(String.self)),
                GraphQLField("desc", type: .scalar(String.self)),
                GraphQLField("duration", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, name: String? = nil, image: String? = nil, desc: String? = nil, duration: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "VideoBook", "id": id, "name": name, "image": image, "desc": desc, "duration": duration])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
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

              /// 图片
              public var image: String? {
                get {
                  return resultMap["image"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "image")
                }
              }

              /// 描述
              public var desc: String? {
                get {
                  return resultMap["desc"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "desc")
                }
              }

              /// 时长（秒）
              public var duration: Int? {
                get {
                  return resultMap["duration"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "duration")
                }
              }
            }

            public struct Price: GraphQLSelectionSet {
              public static let possibleTypes = ["Price"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("selling", type: .scalar(Int.self)),
                GraphQLField("userSelling", type: .scalar(Int.self)),
                GraphQLField("normal", type: .scalar(Int.self)),
                GraphQLField("isSale", type: .scalar(Bool.self)),
                GraphQLField("userSellingWithRequiredExtraGoods", type: .scalar(Int.self)),
                GraphQLField("promotionPrice", type: .scalar(Int.self)),
                GraphQLField("saleLeftSeconds", type: .scalar(Int.self)),
                GraphQLField("promotionPeriod", type: .object(PromotionPeriod.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, selling: Int? = nil, userSelling: Int? = nil, normal: Int? = nil, isSale: Bool? = nil, userSellingWithRequiredExtraGoods: Int? = nil, promotionPrice: Int? = nil, saleLeftSeconds: Int? = nil, promotionPeriod: PromotionPeriod? = nil) {
                self.init(unsafeResultMap: ["__typename": "Price", "id": id, "selling": selling, "userSelling": userSelling, "normal": normal, "isSale": isSale, "userSellingWithRequiredExtraGoods": userSellingWithRequiredExtraGoods, "promotionPrice": promotionPrice, "saleLeftSeconds": saleLeftSeconds, "promotionPeriod": promotionPeriod.flatMap { (value: PromotionPeriod) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 售价
              public var selling: Int? {
                get {
                  return resultMap["selling"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "selling")
                }
              }

              /// 个人售价
              public var userSelling: Int? {
                get {
                  return resultMap["userSelling"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "userSelling")
                }
              }

              /// 原价
              public var normal: Int? {
                get {
                  return resultMap["normal"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "normal")
                }
              }

              /// 当前有特价或限时活动价
              public var isSale: Bool? {
                get {
                  return resultMap["isSale"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isSale")
                }
              }

              /// 最低需要支付金额（必选加价购）
              public var userSellingWithRequiredExtraGoods: Int? {
                get {
                  return resultMap["userSellingWithRequiredExtraGoods"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "userSellingWithRequiredExtraGoods")
                }
              }

              /// 原价
              public var promotionPrice: Int? {
                get {
                  return resultMap["promotionPrice"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "promotionPrice")
                }
              }

              /// 特价剩余秒数
              public var saleLeftSeconds: Int? {
                get {
                  return resultMap["saleLeftSeconds"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "saleLeftSeconds")
                }
              }

              /// 促销活动时间段
              public var promotionPeriod: PromotionPeriod? {
                get {
                  return (resultMap["promotionPeriod"] as? ResultMap).flatMap { PromotionPeriod(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "promotionPeriod")
                }
              }

              public struct PromotionPeriod: GraphQLSelectionSet {
                public static let possibleTypes = ["PromotionPeriod"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("startTime", type: .scalar(Int.self)),
                  GraphQLField("endTime", type: .scalar(Int.self)),
                  GraphQLField("status", type: .scalar(PromotionPeriodStatus.self)),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("promotion", type: .object(Promotion.selections)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(startTime: Int? = nil, endTime: Int? = nil, status: PromotionPeriodStatus? = nil, id: Int? = nil, promotion: Promotion? = nil) {
                  self.init(unsafeResultMap: ["__typename": "PromotionPeriod", "startTime": startTime, "endTime": endTime, "status": status, "id": id, "promotion": promotion.flatMap { (value: Promotion) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 开始时间
                public var startTime: Int? {
                  get {
                    return resultMap["startTime"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "startTime")
                  }
                }

                /// 结束时间
                public var endTime: Int? {
                  get {
                    return resultMap["endTime"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "endTime")
                  }
                }

                /// 促销活动时间段状态
                public var status: PromotionPeriodStatus? {
                  get {
                    return resultMap["status"] as? PromotionPeriodStatus
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "status")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// 促销活动
                public var promotion: Promotion? {
                  get {
                    return (resultMap["promotion"] as? ResultMap).flatMap { Promotion(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "promotion")
                  }
                }

                public struct Promotion: GraphQLSelectionSet {
                  public static let possibleTypes = ["Promotion"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(Int.self)),
                    GraphQLField("isTimeLimit", type: .scalar(Bool.self)),
                    GraphQLField("periodStartTime", type: .scalar(Int.self)),
                    GraphQLField("periodEndTime", type: .scalar(Int.self)),
                    GraphQLField("soldQuantity", type: .scalar(Int.self)),
                    GraphQLField("limitQuantity", type: .scalar(Int.self)),
                    GraphQLField("status", type: .scalar(PromotionStatus.self)),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: Int? = nil, isTimeLimit: Bool? = nil, periodStartTime: Int? = nil, periodEndTime: Int? = nil, soldQuantity: Int? = nil, limitQuantity: Int? = nil, status: PromotionStatus? = nil) {
                    self.init(unsafeResultMap: ["__typename": "Promotion", "id": id, "isTimeLimit": isTimeLimit, "periodStartTime": periodStartTime, "periodEndTime": periodEndTime, "soldQuantity": soldQuantity, "limitQuantity": limitQuantity, "status": status])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var id: Int? {
                    get {
                      return resultMap["id"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  /// 是否限时活动
                  public var isTimeLimit: Bool? {
                    get {
                      return resultMap["isTimeLimit"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isTimeLimit")
                    }
                  }

                  /// 预计时间段开始时间 没有正在进行的时间段并且有未开始的时间段时有值
                  public var periodStartTime: Int? {
                    get {
                      return resultMap["periodStartTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "periodStartTime")
                    }
                  }

                  /// 预计时间段结束时间 当前有进行中的时间段并且其有结束时间
                  public var periodEndTime: Int? {
                    get {
                      return resultMap["periodEndTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "periodEndTime")
                    }
                  }

                  /// 售出数量
                  public var soldQuantity: Int? {
                    get {
                      return resultMap["soldQuantity"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "soldQuantity")
                    }
                  }

                  /// 总数量（限量活动才有值）
                  public var limitQuantity: Int? {
                    get {
                      return resultMap["limitQuantity"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "limitQuantity")
                    }
                  }

                  /// 促销活动状态
                  public var status: PromotionStatus? {
                    get {
                      return resultMap["status"] as? PromotionStatus
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "status")
                    }
                  }
                }
              }
            }

            public struct RelatedPerson: GraphQLSelectionSet {
              public static let possibleTypes = ["RelatedPerson"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("image", type: .scalar(String.self)),
                GraphQLField("intro", type: .scalar(String.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, name: String? = nil, image: String? = nil, intro: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "RelatedPerson", "id": id, "name": name, "image": image, "intro": intro])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
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

              /// 图片
              public var image: String? {
                get {
                  return resultMap["image"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "image")
                }
              }

              /// 简介
              public var intro: String? {
                get {
                  return resultMap["intro"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "intro")
                }
              }
            }

            public struct Course: GraphQLSelectionSet {
              public static let possibleTypes = ["Course"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("author", type: .scalar(String.self)),
                GraphQLField("isFinished", type: .scalar(Bool.self)),
                GraphQLField("endDate", type: .scalar(String.self)),
                GraphQLField("type", type: .scalar(CourseType.self)),
                GraphQLField("chapters", type: .list(.object(Chapter.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(author: String? = nil, isFinished: Bool? = nil, endDate: String? = nil, type: CourseType? = nil, chapters: [Chapter?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "Course", "author": author, "isFinished": isFinished, "endDate": endDate, "type": type, "chapters": chapters.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 主讲人
              public var author: String? {
                get {
                  return resultMap["author"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "author")
                }
              }

              /// 是否已完结
              public var isFinished: Bool? {
                get {
                  return resultMap["isFinished"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isFinished")
                }
              }

              /// 预计完成时间
              public var endDate: String? {
                get {
                  return resultMap["endDate"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endDate")
                }
              }

              /// 类型
              public var type: CourseType? {
                get {
                  return resultMap["type"] as? CourseType
                }
                set {
                  resultMap.updateValue(newValue, forKey: "type")
                }
              }

              /// 章节列表
              public var chapters: [Chapter?]? {
                get {
                  return (resultMap["chapters"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Chapter?] in value.map { (value: ResultMap?) -> Chapter? in value.flatMap { (value: ResultMap) -> Chapter in Chapter(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }, forKey: "chapters")
                }
              }

              public struct Chapter: GraphQLSelectionSet {
                public static let possibleTypes = ["CourseChapter"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("hasDesc", type: .scalar(Bool.self)),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                  GraphQLField("duration", type: .scalar(Int.self)),
                  GraphQLField("isFree", type: .scalar(Bool.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(hasDesc: Bool? = nil, id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "CourseChapter", "hasDesc": hasDesc, "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 是否有文字稿
                public var hasDesc: Bool? {
                  get {
                    return resultMap["hasDesc"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasDesc")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// 标题
                public var name: String? {
                  get {
                    return resultMap["name"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// 资源链接 仅当isFree为true或query为userGood并且才有可能返回
                public var url: String? {
                  get {
                    return resultMap["url"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                /// 时长（秒）
                public var duration: Int? {
                  get {
                    return resultMap["duration"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "duration")
                  }
                }

                /// 是否免费
                public var isFree: Bool? {
                  get {
                    return resultMap["isFree"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFree")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct SummaryAudioBook: GraphQLSelectionSet {
              public static let possibleTypes = ["SummaryAudioBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("cover", type: .scalar(String.self)),
                GraphQLField("duration", type: .scalar(Int.self)),
                GraphQLField("url", type: .scalar(String.self)),
                GraphQLField("id", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(name: String? = nil, cover: String? = nil, duration: Int? = nil, url: String? = nil, id: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "SummaryAudioBook", "name": name, "cover": cover, "duration": duration, "url": url, "id": id])
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

              /// 封面图
              public var cover: String? {
                get {
                  return resultMap["cover"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cover")
                }
              }

              /// 时长（秒）
              public var duration: Int? {
                get {
                  return resultMap["duration"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "duration")
                }
              }

              /// 资源链接
              public var url: String? {
                get {
                  return resultMap["url"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }
            }

            public struct BookResource: GraphQLSelectionSet {
              public static let possibleTypes = ["BookResources"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("briefAudio", type: .object(BriefAudio.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(briefAudio: BriefAudio? = nil) {
                self.init(unsafeResultMap: ["__typename": "BookResources", "briefAudio": briefAudio.flatMap { (value: BriefAudio) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 一分钟简介
              public var briefAudio: BriefAudio? {
                get {
                  return (resultMap["briefAudio"] as? ResultMap).flatMap { BriefAudio(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "briefAudio")
                }
              }

              public struct BriefAudio: GraphQLSelectionSet {
                public static let possibleTypes = ["Audio"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("desc", type: .scalar(String.self)),
                  GraphQLField("content", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                  GraphQLField("duration", type: .scalar(Int.self)),
                  GraphQLField("isFree", type: .scalar(Bool.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, desc: String? = nil, content: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "desc": desc, "content": content, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
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

                /// 描述
                public var desc: String? {
                  get {
                    return resultMap["desc"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "desc")
                  }
                }

                /// 文字稿
                public var content: String? {
                  get {
                    return resultMap["content"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "content")
                  }
                }

                /// 资源链接
                public var url: String? {
                  get {
                    return resultMap["url"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                /// 时长（秒）
                public var duration: Int? {
                  get {
                    return resultMap["duration"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "duration")
                  }
                }

                /// 是否免费
                public var isFree: Bool? {
                  get {
                    return resultMap["isFree"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFree")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct SummaryBook: GraphQLSelectionSet {
              public static let possibleTypes = ["SummaryBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("content", type: .scalar(String.self)),
                GraphQLField("chapterList", type: .list(.object(ChapterList.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(content: String? = nil, chapterList: [ChapterList?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "SummaryBook", "content": content, "chapterList": chapterList.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 内容
              public var content: String? {
                get {
                  return resultMap["content"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "content")
                }
              }

              /// 电子书章节
              public var chapterList: [ChapterList?]? {
                get {
                  return (resultMap["chapterList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterList?] in value.map { (value: ResultMap?) -> ChapterList? in value.flatMap { (value: ResultMap) -> ChapterList in ChapterList(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }, forKey: "chapterList")
                }
              }

              public struct ChapterList: GraphQLSelectionSet {
                public static let possibleTypes = ["EpubChapter"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("epubPath", type: .scalar(String.self)),
                  GraphQLField("num", type: .scalar(Int.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, epubPath: String? = nil, num: Int? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "EpubChapter", "id": id, "name": name, "epubPath": epubPath, "num": num, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// 章节名称
                public var name: String? {
                  get {
                    return resultMap["name"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// epub路径
                public var epubPath: String? {
                  get {
                    return resultMap["epubPath"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "epubPath")
                  }
                }

                /// 章节序号
                public var num: Int? {
                  get {
                    return resultMap["num"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "num")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct BookClub: GraphQLSelectionSet {
              public static let possibleTypes = ["BookClub"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("author", type: .scalar(String.self)),
                GraphQLField("desc", type: .scalar(String.self)),
                GraphQLField("content", type: .scalar(String.self)),
                GraphQLField("cover", type: .scalar(String.self)),
                GraphQLField("url", type: .scalar(String.self)),
                GraphQLField("duration", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, name: String? = nil, author: String? = nil, desc: String? = nil, content: String? = nil, cover: String? = nil, url: String? = nil, duration: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "BookClub", "id": id, "name": name, "author": author, "desc": desc, "content": content, "cover": cover, "url": url, "duration": duration])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
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

              /// 音频作者
              public var author: String? {
                get {
                  return resultMap["author"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "author")
                }
              }

              /// 描述
              public var desc: String? {
                get {
                  return resultMap["desc"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "desc")
                }
              }

              /// 文字稿
              public var content: String? {
                get {
                  return resultMap["content"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "content")
                }
              }

              /// 封面图
              public var cover: String? {
                get {
                  return resultMap["cover"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cover")
                }
              }

              /// 资源链接
              public var url: String? {
                get {
                  return resultMap["url"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "url")
                }
              }

              /// 时长（秒）
              public var duration: Int? {
                get {
                  return resultMap["duration"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "duration")
                }
              }
            }

            public struct InfluencerGuideReading: GraphQLSelectionSet {
              public static let possibleTypes = ["InfluencerGuideReading"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("headerImage", type: .scalar(String.self)),
                GraphQLField("wechatGroupQrcode", type: .scalar(String.self)),
                GraphQLField("isFinished", type: .scalar(Bool.self)),
                GraphQLField("endTime", type: .scalar(Int.self)),
                GraphQLField("albums", type: .list(.object(Album.selections))),
                GraphQLField("lecturers", type: .list(.object(Lecturer.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(headerImage: String? = nil, wechatGroupQrcode: String? = nil, isFinished: Bool? = nil, endTime: Int? = nil, albums: [Album?]? = nil, lecturers: [Lecturer?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "InfluencerGuideReading", "headerImage": headerImage, "wechatGroupQrcode": wechatGroupQrcode, "isFinished": isFinished, "endTime": endTime, "albums": albums.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, "lecturers": lecturers.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 头图
              public var headerImage: String? {
                get {
                  return resultMap["headerImage"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "headerImage")
                }
              }

              /// 购买后群二维码
              public var wechatGroupQrcode: String? {
                get {
                  return resultMap["wechatGroupQrcode"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "wechatGroupQrcode")
                }
              }

              /// 是否已完结
              public var isFinished: Bool? {
                get {
                  return resultMap["isFinished"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isFinished")
                }
              }

              /// 预计完成时间
              public var endTime: Int? {
                get {
                  return resultMap["endTime"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endTime")
                }
              }

              /// 专辑
              public var albums: [Album?]? {
                get {
                  return (resultMap["albums"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Album?] in value.map { (value: ResultMap?) -> Album? in value.flatMap { (value: ResultMap) -> Album in Album(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, forKey: "albums")
                }
              }

              /// 主讲人列表
              public var lecturers: [Lecturer?]? {
                get {
                  return (resultMap["lecturers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Lecturer?] in value.map { (value: ResultMap?) -> Lecturer? in value.flatMap { (value: ResultMap) -> Lecturer in Lecturer(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }, forKey: "lecturers")
                }
              }

              public struct Album: GraphQLSelectionSet {
                public static let possibleTypes = ["InfluencerGuideReadingAlbum"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("image", type: .scalar(String.self)),
                  GraphQLField("sections", type: .list(.object(Section.selections))),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, image: String? = nil, sections: [Section?]? = nil) {
                  self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingAlbum", "id": id, "name": name, "image": image, "sections": sections.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
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

                /// 封面图
                public var image: String? {
                  get {
                    return resultMap["image"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "image")
                  }
                }

                /// 分片列表
                public var sections: [Section?]? {
                  get {
                    return (resultMap["sections"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Section?] in value.map { (value: ResultMap?) -> Section? in value.flatMap { (value: ResultMap) -> Section in Section(unsafeResultMap: value) } } }
                  }
                  set {
                    resultMap.updateValue(newValue.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }, forKey: "sections")
                  }
                }

                public struct Section: GraphQLSelectionSet {
                  public static let possibleTypes = ["InfluencerGuideReadingSection"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(Int.self)),
                    GraphQLField("name", type: .scalar(String.self)),
                    GraphQLField("audios", type: .list(.object(Audio.selections))),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: Int? = nil, name: String? = nil, audios: [Audio?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingSection", "id": id, "name": name, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var id: Int? {
                    get {
                      return resultMap["id"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
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

                  /// 音频列表
                  public var audios: [Audio?]? {
                    get {
                      return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                    }
                    set {
                      resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                    }
                  }

                  public struct Audio: GraphQLSelectionSet {
                    public static let possibleTypes = ["Audio"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("url", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                      GraphQLField("isFree", type: .scalar(Bool.self)),
                      GraphQLField("isLast", type: .scalar(Bool.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 资源链接
                    public var url: String? {
                      get {
                        return resultMap["url"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "url")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }

                    /// 是否免费
                    public var isFree: Bool? {
                      get {
                        return resultMap["isFree"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFree")
                      }
                    }

                    /// 是否最后一章节
                    public var isLast: Bool? {
                      get {
                        return resultMap["isLast"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isLast")
                      }
                    }
                  }
                }
              }

              public struct Lecturer: GraphQLSelectionSet {
                public static let possibleTypes = ["RelatedPerson"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("intro", type: .scalar(String.self)),
                  GraphQLField("image", type: .scalar(String.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(name: String? = nil, intro: String? = nil, image: String? = nil) {
                  self.init(unsafeResultMap: ["__typename": "RelatedPerson", "name": name, "intro": intro, "image": image])
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

                /// 简介
                public var intro: String? {
                  get {
                    return resultMap["intro"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "intro")
                  }
                }

                /// 图片
                public var image: String? {
                  get {
                    return resultMap["image"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "image")
                  }
                }
              }
            }

            public struct Entity: GraphQLSelectionSet {
              public static let possibleTypes = ["Entity"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("stock", type: .scalar(Int.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(stock: Int? = nil) {
                self.init(unsafeResultMap: ["__typename": "Entity", "stock": stock])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 库存数
              public var stock: Int? {
                get {
                  return resultMap["stock"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "stock")
                }
              }
            }

            public struct AudioBook: GraphQLSelectionSet {
              public static let possibleTypes = ["AudioBook"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("isFinished", type: .scalar(Bool.self)),
                GraphQLField("endDate", type: .scalar(String.self)),
                GraphQLField("audios", type: .list(.object(Audio.selections))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(isFinished: Bool? = nil, endDate: String? = nil, audios: [Audio?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "AudioBook", "isFinished": isFinished, "endDate": endDate, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// 是否已完结
              public var isFinished: Bool? {
                get {
                  return resultMap["isFinished"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isFinished")
                }
              }

              /// 预计完成时间
              public var endDate: String? {
                get {
                  return resultMap["endDate"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endDate")
                }
              }

              /// 音频列表
              public var audios: [Audio?]? {
                get {
                  return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                }
              }

              public struct Audio: GraphQLSelectionSet {
                public static let possibleTypes = ["Audio"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .scalar(Int.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("url", type: .scalar(String.self)),
                  GraphQLField("duration", type: .scalar(Int.self)),
                  GraphQLField("isFree", type: .scalar(Bool.self)),
                  GraphQLField("isLast", type: .scalar(Bool.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var id: Int? {
                  get {
                    return resultMap["id"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
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

                /// 资源链接
                public var url: String? {
                  get {
                    return resultMap["url"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                /// 时长（秒）
                public var duration: Int? {
                  get {
                    return resultMap["duration"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "duration")
                  }
                }

                /// 是否免费
                public var isFree: Bool? {
                  get {
                    return resultMap["isFree"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFree")
                  }
                }

                /// 是否最后一章节
                public var isLast: Bool? {
                  get {
                    return resultMap["isLast"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isLast")
                  }
                }
              }
            }

            public struct ExtraUserGood: GraphQLSelectionSet {
              public static let possibleTypes = ["ExtraUserGood"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(Int.self)),
                GraphQLField("isRequired", type: .scalar(Bool.self)),
                GraphQLField("extraPrice", type: .scalar(Int.self)),
                GraphQLField("userGood", type: .object(UserGood.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: Int? = nil, isRequired: Bool? = nil, extraPrice: Int? = nil, userGood: UserGood? = nil) {
                self.init(unsafeResultMap: ["__typename": "ExtraUserGood", "id": id, "isRequired": isRequired, "extraPrice": extraPrice, "userGood": userGood.flatMap { (value: UserGood) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// ID
              public var id: Int? {
                get {
                  return resultMap["id"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              /// 是否必购
              public var isRequired: Bool? {
                get {
                  return resultMap["isRequired"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "isRequired")
                }
              }

              /// 加价购售价
              public var extraPrice: Int? {
                get {
                  return resultMap["extraPrice"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "extraPrice")
                }
              }

              /// 用户商品
              public var userGood: UserGood? {
                get {
                  return (resultMap["userGood"] as? ResultMap).flatMap { UserGood(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "userGood")
                }
              }

              public struct UserGood: GraphQLSelectionSet {
                public static let possibleTypes = ["UserGood"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("hasRight", type: .scalar(Bool.self)),
                  GraphQLField("hasCoupon", type: .scalar(Bool.self)),
                  GraphQLField("obtainTime", type: .scalar(Int.self)),
                  GraphQLField("obtainMode", type: .scalar(Int.self)),
                  GraphQLField("hasPackageRight", type: .scalar(Bool.self)),
                  GraphQLField("isFavorite", type: .scalar(Bool.self)),
                  GraphQLField("studyProgress", type: .object(StudyProgress.selections)),
                  GraphQLField("pageInfo", type: .object(PageInfo.selections)),
                  GraphQLField("good", type: .object(Good.selections)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(hasRight: Bool? = nil, hasCoupon: Bool? = nil, obtainTime: Int? = nil, obtainMode: Int? = nil, hasPackageRight: Bool? = nil, isFavorite: Bool? = nil, studyProgress: StudyProgress? = nil, pageInfo: PageInfo? = nil, good: Good? = nil) {
                  self.init(unsafeResultMap: ["__typename": "UserGood", "hasRight": hasRight, "hasCoupon": hasCoupon, "obtainTime": obtainTime, "obtainMode": obtainMode, "hasPackageRight": hasPackageRight, "isFavorite": isFavorite, "studyProgress": studyProgress.flatMap { (value: StudyProgress) -> ResultMap in value.resultMap }, "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "good": good.flatMap { (value: Good) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// 是否有权限
                public var hasRight: Bool? {
                  get {
                    return resultMap["hasRight"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasRight")
                  }
                }

                /// 是否有可用优惠券
                public var hasCoupon: Bool? {
                  get {
                    return resultMap["hasCoupon"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasCoupon")
                  }
                }

                /// 获得时间
                public var obtainTime: Int? {
                  get {
                    return resultMap["obtainTime"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "obtainTime")
                  }
                }

                /// 获得方式 1购买 2唯一码 3红书包 4免费领取 5appstore内购 6app内购 7兑换码 8试用码 9参加功能活动 10中信联盟 11赠礼订单
                /// 12大布兑换码 13年会赠送 14分享有礼获取 15分享红包获赠商品 16点击分享红包获取商品
                public var obtainMode: Int? {
                  get {
                    return resultMap["obtainMode"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "obtainMode")
                  }
                }

                /// 是否有畅享权限，仅query userGood时返回
                public var hasPackageRight: Bool? {
                  get {
                    return resultMap["hasPackageRight"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "hasPackageRight")
                  }
                }

                /// 是否收藏
                public var isFavorite: Bool? {
                  get {
                    return resultMap["isFavorite"] as? Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "isFavorite")
                  }
                }

                /// 学习进度信息
                public var studyProgress: StudyProgress? {
                  get {
                    return (resultMap["studyProgress"] as? ResultMap).flatMap { StudyProgress(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "studyProgress")
                  }
                }

                /// 分页信息
                public var pageInfo: PageInfo? {
                  get {
                    return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
                  }
                }

                /// 商品信息
                public var good: Good? {
                  get {
                    return (resultMap["good"] as? ResultMap).flatMap { Good(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "good")
                  }
                }

                public struct StudyProgress: GraphQLSelectionSet {
                  public static let possibleTypes = ["StudyProgress"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("chapterId", type: .scalar(Int.self)),
                    GraphQLField("percent", type: .scalar(Int.self)),
                    GraphQLField("currentTime", type: .scalar(Int.self)),
                    GraphQLField("isEnd", type: .scalar(Bool.self)),
                    GraphQLField("chapterName", type: .scalar(String.self)),
                    GraphQLField("chapterStudyProgressList", type: .list(.object(ChapterStudyProgressList.selections))),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(chapterId: Int? = nil, percent: Int? = nil, currentTime: Int? = nil, isEnd: Bool? = nil, chapterName: String? = nil, chapterStudyProgressList: [ChapterStudyProgressList?]? = nil) {
                    self.init(unsafeResultMap: ["__typename": "StudyProgress", "chapterId": chapterId, "percent": percent, "currentTime": currentTime, "isEnd": isEnd, "chapterName": chapterName, "chapterStudyProgressList": chapterStudyProgressList.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// 章节ID
                  public var chapterId: Int? {
                    get {
                      return resultMap["chapterId"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "chapterId")
                    }
                  }

                  /// 百分比进度（0-10000整数）
                  public var percent: Int? {
                    get {
                      return resultMap["percent"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "percent")
                    }
                  }

                  /// 当前播放时长
                  public var currentTime: Int? {
                    get {
                      return resultMap["currentTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "currentTime")
                    }
                  }

                  /// 是否已学到最后一章（和数据库isEnd不一样）
                  public var isEnd: Bool? {
                    get {
                      return resultMap["isEnd"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isEnd")
                    }
                  }

                  /// 章节名称
                  public var chapterName: String? {
                    get {
                      return resultMap["chapterName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "chapterName")
                    }
                  }

                  /// 章节学习进度
                  public var chapterStudyProgressList: [ChapterStudyProgressList?]? {
                    get {
                      return (resultMap["chapterStudyProgressList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterStudyProgressList?] in value.map { (value: ResultMap?) -> ChapterStudyProgressList? in value.flatMap { (value: ResultMap) -> ChapterStudyProgressList in ChapterStudyProgressList(unsafeResultMap: value) } } }
                    }
                    set {
                      resultMap.updateValue(newValue.flatMap { (value: [ChapterStudyProgressList?]) -> [ResultMap?] in value.map { (value: ChapterStudyProgressList?) -> ResultMap? in value.flatMap { (value: ChapterStudyProgressList) -> ResultMap in value.resultMap } } }, forKey: "chapterStudyProgressList")
                    }
                  }

                  public struct ChapterStudyProgressList: GraphQLSelectionSet {
                    public static let possibleTypes = ["ChapterStudyProgress"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("chapterId", type: .scalar(Int.self)),
                      GraphQLField("percent", type: .scalar(Int.self)),
                      GraphQLField("currentTime", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(chapterId: Int? = nil, percent: Int? = nil, currentTime: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "ChapterStudyProgress", "chapterId": chapterId, "percent": percent, "currentTime": currentTime])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 章节ID
                    public var chapterId: Int? {
                      get {
                        return resultMap["chapterId"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "chapterId")
                      }
                    }

                    /// 百分比进度（0-10000整数）
                    public var percent: Int? {
                      get {
                        return resultMap["percent"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "percent")
                      }
                    }

                    /// 当前播放时长
                    public var currentTime: Int? {
                      get {
                        return resultMap["currentTime"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "currentTime")
                      }
                    }
                  }
                }

                public struct PageInfo: GraphQLSelectionSet {
                  public static let possibleTypes = ["PageInfo"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("totalCount", type: .scalar(Int.self)),
                    GraphQLField("hasNext", type: .scalar(Bool.self)),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(totalCount: Int? = nil, hasNext: Bool? = nil) {
                    self.init(unsafeResultMap: ["__typename": "PageInfo", "totalCount": totalCount, "hasNext": hasNext])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// 总数
                  public var totalCount: Int? {
                    get {
                      return resultMap["totalCount"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "totalCount")
                    }
                  }

                  /// 是否还有下一条
                  public var hasNext: Bool? {
                    get {
                      return resultMap["hasNext"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "hasNext")
                    }
                  }
                }

                public struct Good: GraphQLSelectionSet {
                  public static let possibleTypes = ["Good"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("hasFree", type: .scalar(Bool.self)),
                    GraphQLField("isFree", type: .scalar(Bool.self)),
                    GraphQLField("id", type: .scalar(Int.self)),
                    GraphQLField("goodsNum", type: .scalar(String.self)),
                    GraphQLField("typeName", type: .scalar(String.self)),
                    GraphQLField("desc", type: .scalar(String.self)),
                    GraphQLField("descImage", type: .scalar(String.self)),
                    GraphQLField("descType", type: .scalar(Int.self)),
                    GraphQLField("displayTime", type: .scalar(Int.self)),
                    GraphQLField("name", type: .scalar(String.self)),
                    GraphQLField("image", type: .scalar(String.self)),
                    GraphQLField("crossImage", type: .scalar(String.self)),
                    GraphQLField("squareImage", type: .scalar(String.self)),
                    GraphQLField("type", type: .scalar(String.self)),
                    GraphQLField("resId", type: .scalar(Int.self)),
                    GraphQLField("ownerSum", type: .scalar(Int.self)),
                    GraphQLField("subName", type: .scalar(String.self)),
                    GraphQLField("bookAuthor", type: .scalar(String.self)),
                    GraphQLField("resAuthor", type: .scalar(String.self)),
                    GraphQLField("isOnlyMainland", type: .scalar(Bool.self)),
                    GraphQLField("recommendation", type: .scalar(String.self)),
                    GraphQLField("book", type: .object(Book.selections)),
                    GraphQLField("videoBook", type: .object(VideoBook.selections)),
                    GraphQLField("relatedPeople", type: .list(.object(RelatedPerson.selections))),
                    GraphQLField("price", type: .object(Price.selections)),
                    GraphQLField("course", type: .object(Course.selections)),
                    GraphQLField("entity", type: .object(Entity.selections)),
                    GraphQLField("summaryAudioBook", type: .object(SummaryAudioBook.selections)),
                    GraphQLField("bookResources", type: .object(BookResource.selections)),
                    GraphQLField("summaryBook", type: .object(SummaryBook.selections)),
                    GraphQLField("bookClub", type: .object(BookClub.selections)),
                    GraphQLField("influencerGuideReading", type: .object(InfluencerGuideReading.selections)),
                    GraphQLField("audioBook", type: .object(AudioBook.selections)),
                    GraphQLField("liveReplay", type: .object(LiveReplay.selections)),
                  ]

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(hasFree: Bool? = nil, isFree: Bool? = nil, id: Int? = nil, goodsNum: String? = nil, typeName: String? = nil, desc: String? = nil, descImage: String? = nil, descType: Int? = nil, displayTime: Int? = nil, name: String? = nil, image: String? = nil, crossImage: String? = nil, squareImage: String? = nil, type: String? = nil, resId: Int? = nil, ownerSum: Int? = nil, subName: String? = nil, bookAuthor: String? = nil, resAuthor: String? = nil, isOnlyMainland: Bool? = nil, recommendation: String? = nil, book: Book? = nil, videoBook: VideoBook? = nil, relatedPeople: [RelatedPerson?]? = nil, price: Price? = nil, course: Course? = nil, entity: Entity? = nil, summaryAudioBook: SummaryAudioBook? = nil, bookResources: BookResource? = nil, summaryBook: SummaryBook? = nil, bookClub: BookClub? = nil, influencerGuideReading: InfluencerGuideReading? = nil, audioBook: AudioBook? = nil, liveReplay: LiveReplay? = nil) {
                    self.init(unsafeResultMap: ["__typename": "Good", "hasFree": hasFree, "isFree": isFree, "id": id, "goodsNum": goodsNum, "typeName": typeName, "desc": desc, "descImage": descImage, "descType": descType, "displayTime": displayTime, "name": name, "image": image, "crossImage": crossImage, "squareImage": squareImage, "type": type, "resId": resId, "ownerSum": ownerSum, "subName": subName, "bookAuthor": bookAuthor, "resAuthor": resAuthor, "isOnlyMainland": isOnlyMainland, "recommendation": recommendation, "book": book.flatMap { (value: Book) -> ResultMap in value.resultMap }, "videoBook": videoBook.flatMap { (value: VideoBook) -> ResultMap in value.resultMap }, "relatedPeople": relatedPeople.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, "price": price.flatMap { (value: Price) -> ResultMap in value.resultMap }, "course": course.flatMap { (value: Course) -> ResultMap in value.resultMap }, "entity": entity.flatMap { (value: Entity) -> ResultMap in value.resultMap }, "summaryAudioBook": summaryAudioBook.flatMap { (value: SummaryAudioBook) -> ResultMap in value.resultMap }, "bookResources": bookResources.flatMap { (value: BookResource) -> ResultMap in value.resultMap }, "summaryBook": summaryBook.flatMap { (value: SummaryBook) -> ResultMap in value.resultMap }, "bookClub": bookClub.flatMap { (value: BookClub) -> ResultMap in value.resultMap }, "influencerGuideReading": influencerGuideReading.flatMap { (value: InfluencerGuideReading) -> ResultMap in value.resultMap }, "audioBook": audioBook.flatMap { (value: AudioBook) -> ResultMap in value.resultMap }, "liveReplay": liveReplay.flatMap { (value: LiveReplay) -> ResultMap in value.resultMap }])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// 是否有免费试听
                  public var hasFree: Bool? {
                    get {
                      return resultMap["hasFree"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "hasFree")
                    }
                  }

                  /// 是否免费
                  public var isFree: Bool? {
                    get {
                      return resultMap["isFree"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isFree")
                    }
                  }

                  public var id: Int? {
                    get {
                      return resultMap["id"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  /// 商品编号
                  public var goodsNum: String? {
                    get {
                      return resultMap["goodsNum"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "goodsNum")
                    }
                  }

                  /// 角标名称
                  public var typeName: String? {
                    get {
                      return resultMap["typeName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "typeName")
                    }
                  }

                  /// 商品描述
                  public var desc: String? {
                    get {
                      return resultMap["desc"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "desc")
                    }
                  }

                  /// 商品简介图片
                  public var descImage: String? {
                    get {
                      return resultMap["descImage"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "descImage")
                    }
                  }

                  /// 商品描述类型 1展示文本简介 2展示图片简介（descImage）
                  public var descType: Int? {
                    get {
                      return resultMap["descType"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "descType")
                    }
                  }

                  /// 前端展示时间
                  public var displayTime: Int? {
                    get {
                      return resultMap["displayTime"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "displayTime")
                    }
                  }

                  /// 商品名称
                  public var name: String? {
                    get {
                      return resultMap["name"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "name")
                    }
                  }

                  /// 商品图片
                  public var image: String? {
                    get {
                      return resultMap["image"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "image")
                    }
                  }

                  /// 商品横图片
                  public var crossImage: String? {
                    get {
                      return resultMap["crossImage"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "crossImage")
                    }
                  }

                  /// 方图
                  public var squareImage: String? {
                    get {
                      return resultMap["squareImage"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "squareImage")
                    }
                  }

                  /// 商品类型
                  public var type: String? {
                    get {
                      return resultMap["type"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "type")
                    }
                  }

                  /// 相关资源ID
                  public var resId: Int? {
                    get {
                      return resultMap["resId"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "resId")
                    }
                  }

                  /// 订阅数
                  public var ownerSum: Int? {
                    get {
                      return resultMap["ownerSum"] as? Int
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "ownerSum")
                    }
                  }

                  /// 商品副名称
                  public var subName: String? {
                    get {
                      return resultMap["subName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "subName")
                    }
                  }

                  /// 图书作者
                  public var bookAuthor: String? {
                    get {
                      return resultMap["bookAuthor"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "bookAuthor")
                    }
                  }

                  /// 关联作者
                  public var resAuthor: String? {
                    get {
                      return resultMap["resAuthor"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "resAuthor")
                    }
                  }

                  /// 是否只允许中国大陆购买
                  public var isOnlyMainland: Bool? {
                    get {
                      return resultMap["isOnlyMainland"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "isOnlyMainland")
                    }
                  }

                  /// 编辑荐语
                  public var recommendation: String? {
                    get {
                      return resultMap["recommendation"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "recommendation")
                    }
                  }

                  /// 图书详情
                  public var book: Book? {
                    get {
                      return (resultMap["book"] as? ResultMap).flatMap { Book(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "book")
                    }
                  }

                  /// 视频读书详情 仅当商品类型为videoBook
                  public var videoBook: VideoBook? {
                    get {
                      return (resultMap["videoBook"] as? ResultMap).flatMap { VideoBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "videoBook")
                    }
                  }

                  /// 关联人物信息列表
                  public var relatedPeople: [RelatedPerson?]? {
                    get {
                      return (resultMap["relatedPeople"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [RelatedPerson?] in value.map { (value: ResultMap?) -> RelatedPerson? in value.flatMap { (value: ResultMap) -> RelatedPerson in RelatedPerson(unsafeResultMap: value) } } }
                    }
                    set {
                      resultMap.updateValue(newValue.flatMap { (value: [RelatedPerson?]) -> [ResultMap?] in value.map { (value: RelatedPerson?) -> ResultMap? in value.flatMap { (value: RelatedPerson) -> ResultMap in value.resultMap } } }, forKey: "relatedPeople")
                    }
                  }

                  /// 价格信息
                  public var price: Price? {
                    get {
                      return (resultMap["price"] as? ResultMap).flatMap { Price(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "price")
                    }
                  }

                  /// 课程详情 仅当商品类型为course
                  public var course: Course? {
                    get {
                      return (resultMap["course"] as? ResultMap).flatMap { Course(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "course")
                    }
                  }

                  /// 实物商品属性
                  public var entity: Entity? {
                    get {
                      return (resultMap["entity"] as? ResultMap).flatMap { Entity(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "entity")
                    }
                  }

                  /// 好书快听阅读时差详情 仅当商品类型为summaryAudioBook或globalSummaryAudioBook
                  public var summaryAudioBook: SummaryAudioBook? {
                    get {
                      return (resultMap["summaryAudioBook"] as? ResultMap).flatMap { SummaryAudioBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "summaryAudioBook")
                    }
                  }

                  /// 编辑荐书相关资源 仅当商品类型为bookHomepage
                  public var bookResources: BookResource? {
                    get {
                      return (resultMap["bookResources"] as? ResultMap).flatMap { BookResource(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "bookResources")
                    }
                  }

                  /// 极简全球阅读详情 仅当商品类型为globalSummaryBook
                  public var summaryBook: SummaryBook? {
                    get {
                      return (resultMap["summaryBook"] as? ResultMap).flatMap { SummaryBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "summaryBook")
                    }
                  }

                  /// 大咖领读详情 仅当商品类型为bookClub
                  public var bookClub: BookClub? {
                    get {
                      return (resultMap["bookClub"] as? ResultMap).flatMap { BookClub(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "bookClub")
                    }
                  }

                  /// 新大咖领读详情 仅当商品类型为influencerGuideReading
                  public var influencerGuideReading: InfluencerGuideReading? {
                    get {
                      return (resultMap["influencerGuideReading"] as? ResultMap).flatMap { InfluencerGuideReading(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "influencerGuideReading")
                    }
                  }

                  /// 有声书详情 仅当商品类型为audioBook
                  public var audioBook: AudioBook? {
                    get {
                      return (resultMap["audioBook"] as? ResultMap).flatMap { AudioBook(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "audioBook")
                    }
                  }

                  /// 视频读书详情 仅当商品类型为liveReplay
                  public var liveReplay: LiveReplay? {
                    get {
                      return (resultMap["liveReplay"] as? ResultMap).flatMap { LiveReplay(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "liveReplay")
                    }
                  }

                  public struct Book: GraphQLSelectionSet {
                    public static let possibleTypes = ["Book"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("cover", type: .scalar(String.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, cover: String? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Book", "id": id, "cover": cover])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
                      }
                    }

                    /// 封面
                    public var cover: String? {
                      get {
                        return resultMap["cover"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "cover")
                      }
                    }
                  }

                  public struct VideoBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["VideoBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("image", type: .scalar(String.self)),
                      GraphQLField("desc", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, image: String? = nil, desc: String? = nil, duration: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "VideoBook", "id": id, "name": name, "image": image, "desc": desc, "duration": duration])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 图片
                    public var image: String? {
                      get {
                        return resultMap["image"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "image")
                      }
                    }

                    /// 描述
                    public var desc: String? {
                      get {
                        return resultMap["desc"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "desc")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }
                  }

                  public struct RelatedPerson: GraphQLSelectionSet {
                    public static let possibleTypes = ["RelatedPerson"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("image", type: .scalar(String.self)),
                      GraphQLField("intro", type: .scalar(String.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, image: String? = nil, intro: String? = nil) {
                      self.init(unsafeResultMap: ["__typename": "RelatedPerson", "id": id, "name": name, "image": image, "intro": intro])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 图片
                    public var image: String? {
                      get {
                        return resultMap["image"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "image")
                      }
                    }

                    /// 简介
                    public var intro: String? {
                      get {
                        return resultMap["intro"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "intro")
                      }
                    }
                  }

                  public struct Price: GraphQLSelectionSet {
                    public static let possibleTypes = ["Price"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("selling", type: .scalar(Int.self)),
                      GraphQLField("userSelling", type: .scalar(Int.self)),
                      GraphQLField("normal", type: .scalar(Int.self)),
                      GraphQLField("isSale", type: .scalar(Bool.self)),
                      GraphQLField("userSellingWithRequiredExtraGoods", type: .scalar(Int.self)),
                      GraphQLField("promotionPrice", type: .scalar(Int.self)),
                      GraphQLField("saleLeftSeconds", type: .scalar(Int.self)),
                      GraphQLField("promotionPeriod", type: .object(PromotionPeriod.selections)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, selling: Int? = nil, userSelling: Int? = nil, normal: Int? = nil, isSale: Bool? = nil, userSellingWithRequiredExtraGoods: Int? = nil, promotionPrice: Int? = nil, saleLeftSeconds: Int? = nil, promotionPeriod: PromotionPeriod? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Price", "id": id, "selling": selling, "userSelling": userSelling, "normal": normal, "isSale": isSale, "userSellingWithRequiredExtraGoods": userSellingWithRequiredExtraGoods, "promotionPrice": promotionPrice, "saleLeftSeconds": saleLeftSeconds, "promotionPeriod": promotionPeriod.flatMap { (value: PromotionPeriod) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
                      }
                    }

                    /// 售价
                    public var selling: Int? {
                      get {
                        return resultMap["selling"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "selling")
                      }
                    }

                    /// 个人售价
                    public var userSelling: Int? {
                      get {
                        return resultMap["userSelling"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "userSelling")
                      }
                    }

                    /// 原价
                    public var normal: Int? {
                      get {
                        return resultMap["normal"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "normal")
                      }
                    }

                    /// 当前有特价或限时活动价
                    public var isSale: Bool? {
                      get {
                        return resultMap["isSale"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isSale")
                      }
                    }

                    /// 最低需要支付金额（必选加价购）
                    public var userSellingWithRequiredExtraGoods: Int? {
                      get {
                        return resultMap["userSellingWithRequiredExtraGoods"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "userSellingWithRequiredExtraGoods")
                      }
                    }

                    /// 原价
                    public var promotionPrice: Int? {
                      get {
                        return resultMap["promotionPrice"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "promotionPrice")
                      }
                    }

                    /// 特价剩余秒数
                    public var saleLeftSeconds: Int? {
                      get {
                        return resultMap["saleLeftSeconds"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "saleLeftSeconds")
                      }
                    }

                    /// 促销活动时间段
                    public var promotionPeriod: PromotionPeriod? {
                      get {
                        return (resultMap["promotionPeriod"] as? ResultMap).flatMap { PromotionPeriod(unsafeResultMap: $0) }
                      }
                      set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "promotionPeriod")
                      }
                    }

                    public struct PromotionPeriod: GraphQLSelectionSet {
                      public static let possibleTypes = ["PromotionPeriod"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("startTime", type: .scalar(Int.self)),
                        GraphQLField("endTime", type: .scalar(Int.self)),
                        GraphQLField("status", type: .scalar(PromotionPeriodStatus.self)),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("promotion", type: .object(Promotion.selections)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(startTime: Int? = nil, endTime: Int? = nil, status: PromotionPeriodStatus? = nil, id: Int? = nil, promotion: Promotion? = nil) {
                        self.init(unsafeResultMap: ["__typename": "PromotionPeriod", "startTime": startTime, "endTime": endTime, "status": status, "id": id, "promotion": promotion.flatMap { (value: Promotion) -> ResultMap in value.resultMap }])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      /// 开始时间
                      public var startTime: Int? {
                        get {
                          return resultMap["startTime"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "startTime")
                        }
                      }

                      /// 结束时间
                      public var endTime: Int? {
                        get {
                          return resultMap["endTime"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "endTime")
                        }
                      }

                      /// 促销活动时间段状态
                      public var status: PromotionPeriodStatus? {
                        get {
                          return resultMap["status"] as? PromotionPeriodStatus
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "status")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
                        }
                      }

                      /// 促销活动
                      public var promotion: Promotion? {
                        get {
                          return (resultMap["promotion"] as? ResultMap).flatMap { Promotion(unsafeResultMap: $0) }
                        }
                        set {
                          resultMap.updateValue(newValue?.resultMap, forKey: "promotion")
                        }
                      }

                      public struct Promotion: GraphQLSelectionSet {
                        public static let possibleTypes = ["Promotion"]

                        public static let selections: [GraphQLSelection] = [
                          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                          GraphQLField("id", type: .scalar(Int.self)),
                          GraphQLField("isTimeLimit", type: .scalar(Bool.self)),
                          GraphQLField("periodStartTime", type: .scalar(Int.self)),
                          GraphQLField("periodEndTime", type: .scalar(Int.self)),
                          GraphQLField("soldQuantity", type: .scalar(Int.self)),
                          GraphQLField("limitQuantity", type: .scalar(Int.self)),
                          GraphQLField("status", type: .scalar(PromotionStatus.self)),
                        ]

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                          self.resultMap = unsafeResultMap
                        }

                        public init(id: Int? = nil, isTimeLimit: Bool? = nil, periodStartTime: Int? = nil, periodEndTime: Int? = nil, soldQuantity: Int? = nil, limitQuantity: Int? = nil, status: PromotionStatus? = nil) {
                          self.init(unsafeResultMap: ["__typename": "Promotion", "id": id, "isTimeLimit": isTimeLimit, "periodStartTime": periodStartTime, "periodEndTime": periodEndTime, "soldQuantity": soldQuantity, "limitQuantity": limitQuantity, "status": status])
                        }

                        public var __typename: String {
                          get {
                            return resultMap["__typename"]! as! String
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                          }
                        }

                        public var id: Int? {
                          get {
                            return resultMap["id"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "id")
                          }
                        }

                        /// 是否限时活动
                        public var isTimeLimit: Bool? {
                          get {
                            return resultMap["isTimeLimit"] as? Bool
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "isTimeLimit")
                          }
                        }

                        /// 预计时间段开始时间 没有正在进行的时间段并且有未开始的时间段时有值
                        public var periodStartTime: Int? {
                          get {
                            return resultMap["periodStartTime"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "periodStartTime")
                          }
                        }

                        /// 预计时间段结束时间 当前有进行中的时间段并且其有结束时间
                        public var periodEndTime: Int? {
                          get {
                            return resultMap["periodEndTime"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "periodEndTime")
                          }
                        }

                        /// 售出数量
                        public var soldQuantity: Int? {
                          get {
                            return resultMap["soldQuantity"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "soldQuantity")
                          }
                        }

                        /// 总数量（限量活动才有值）
                        public var limitQuantity: Int? {
                          get {
                            return resultMap["limitQuantity"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "limitQuantity")
                          }
                        }

                        /// 促销活动状态
                        public var status: PromotionStatus? {
                          get {
                            return resultMap["status"] as? PromotionStatus
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "status")
                          }
                        }
                      }
                    }
                  }

                  public struct Course: GraphQLSelectionSet {
                    public static let possibleTypes = ["Course"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("author", type: .scalar(String.self)),
                      GraphQLField("isFinished", type: .scalar(Bool.self)),
                      GraphQLField("endDate", type: .scalar(String.self)),
                      GraphQLField("type", type: .scalar(CourseType.self)),
                      GraphQLField("chapters", type: .list(.object(Chapter.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(author: String? = nil, isFinished: Bool? = nil, endDate: String? = nil, type: CourseType? = nil, chapters: [Chapter?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Course", "author": author, "isFinished": isFinished, "endDate": endDate, "type": type, "chapters": chapters.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 主讲人
                    public var author: String? {
                      get {
                        return resultMap["author"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "author")
                      }
                    }

                    /// 是否已完结
                    public var isFinished: Bool? {
                      get {
                        return resultMap["isFinished"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFinished")
                      }
                    }

                    /// 预计完成时间
                    public var endDate: String? {
                      get {
                        return resultMap["endDate"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "endDate")
                      }
                    }

                    /// 类型
                    public var type: CourseType? {
                      get {
                        return resultMap["type"] as? CourseType
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "type")
                      }
                    }

                    /// 章节列表
                    public var chapters: [Chapter?]? {
                      get {
                        return (resultMap["chapters"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Chapter?] in value.map { (value: ResultMap?) -> Chapter? in value.flatMap { (value: ResultMap) -> Chapter in Chapter(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Chapter?]) -> [ResultMap?] in value.map { (value: Chapter?) -> ResultMap? in value.flatMap { (value: Chapter) -> ResultMap in value.resultMap } } }, forKey: "chapters")
                      }
                    }

                    public struct Chapter: GraphQLSelectionSet {
                      public static let possibleTypes = ["CourseChapter"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("hasDesc", type: .scalar(Bool.self)),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("url", type: .scalar(String.self)),
                        GraphQLField("duration", type: .scalar(Int.self)),
                        GraphQLField("isFree", type: .scalar(Bool.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(hasDesc: Bool? = nil, id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "CourseChapter", "hasDesc": hasDesc, "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      /// 是否有文字稿
                      public var hasDesc: Bool? {
                        get {
                          return resultMap["hasDesc"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "hasDesc")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
                        }
                      }

                      /// 标题
                      public var name: String? {
                        get {
                          return resultMap["name"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "name")
                        }
                      }

                      /// 资源链接 仅当isFree为true或query为userGood并且才有可能返回
                      public var url: String? {
                        get {
                          return resultMap["url"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "url")
                        }
                      }

                      /// 时长（秒）
                      public var duration: Int? {
                        get {
                          return resultMap["duration"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "duration")
                        }
                      }

                      /// 是否免费
                      public var isFree: Bool? {
                        get {
                          return resultMap["isFree"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isFree")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct Entity: GraphQLSelectionSet {
                    public static let possibleTypes = ["Entity"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("stock", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(stock: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "Entity", "stock": stock])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 库存数
                    public var stock: Int? {
                      get {
                        return resultMap["stock"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "stock")
                      }
                    }
                  }

                  public struct SummaryAudioBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["SummaryAudioBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("cover", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                      GraphQLField("url", type: .scalar(String.self)),
                      GraphQLField("id", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(name: String? = nil, cover: String? = nil, duration: Int? = nil, url: String? = nil, id: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "SummaryAudioBook", "name": name, "cover": cover, "duration": duration, "url": url, "id": id])
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

                    /// 封面图
                    public var cover: String? {
                      get {
                        return resultMap["cover"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "cover")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }

                    /// 资源链接
                    public var url: String? {
                      get {
                        return resultMap["url"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "url")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
                      }
                    }
                  }

                  public struct BookResource: GraphQLSelectionSet {
                    public static let possibleTypes = ["BookResources"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("briefAudio", type: .object(BriefAudio.selections)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(briefAudio: BriefAudio? = nil) {
                      self.init(unsafeResultMap: ["__typename": "BookResources", "briefAudio": briefAudio.flatMap { (value: BriefAudio) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 一分钟简介
                    public var briefAudio: BriefAudio? {
                      get {
                        return (resultMap["briefAudio"] as? ResultMap).flatMap { BriefAudio(unsafeResultMap: $0) }
                      }
                      set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "briefAudio")
                      }
                    }

                    public struct BriefAudio: GraphQLSelectionSet {
                      public static let possibleTypes = ["Audio"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("desc", type: .scalar(String.self)),
                        GraphQLField("content", type: .scalar(String.self)),
                        GraphQLField("url", type: .scalar(String.self)),
                        GraphQLField("duration", type: .scalar(Int.self)),
                        GraphQLField("isFree", type: .scalar(Bool.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, desc: String? = nil, content: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "desc": desc, "content": content, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
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

                      /// 描述
                      public var desc: String? {
                        get {
                          return resultMap["desc"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "desc")
                        }
                      }

                      /// 文字稿
                      public var content: String? {
                        get {
                          return resultMap["content"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "content")
                        }
                      }

                      /// 资源链接
                      public var url: String? {
                        get {
                          return resultMap["url"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "url")
                        }
                      }

                      /// 时长（秒）
                      public var duration: Int? {
                        get {
                          return resultMap["duration"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "duration")
                        }
                      }

                      /// 是否免费
                      public var isFree: Bool? {
                        get {
                          return resultMap["isFree"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isFree")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct SummaryBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["SummaryBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("content", type: .scalar(String.self)),
                      GraphQLField("chapterList", type: .list(.object(ChapterList.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(content: String? = nil, chapterList: [ChapterList?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "SummaryBook", "content": content, "chapterList": chapterList.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 内容
                    public var content: String? {
                      get {
                        return resultMap["content"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "content")
                      }
                    }

                    /// 电子书章节
                    public var chapterList: [ChapterList?]? {
                      get {
                        return (resultMap["chapterList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ChapterList?] in value.map { (value: ResultMap?) -> ChapterList? in value.flatMap { (value: ResultMap) -> ChapterList in ChapterList(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [ChapterList?]) -> [ResultMap?] in value.map { (value: ChapterList?) -> ResultMap? in value.flatMap { (value: ChapterList) -> ResultMap in value.resultMap } } }, forKey: "chapterList")
                      }
                    }

                    public struct ChapterList: GraphQLSelectionSet {
                      public static let possibleTypes = ["EpubChapter"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("epubPath", type: .scalar(String.self)),
                        GraphQLField("num", type: .scalar(Int.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, epubPath: String? = nil, num: Int? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "EpubChapter", "id": id, "name": name, "epubPath": epubPath, "num": num, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
                        }
                      }

                      /// 章节名称
                      public var name: String? {
                        get {
                          return resultMap["name"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "name")
                        }
                      }

                      /// epub路径
                      public var epubPath: String? {
                        get {
                          return resultMap["epubPath"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "epubPath")
                        }
                      }

                      /// 章节序号
                      public var num: Int? {
                        get {
                          return resultMap["num"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "num")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct BookClub: GraphQLSelectionSet {
                    public static let possibleTypes = ["BookClub"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("author", type: .scalar(String.self)),
                      GraphQLField("desc", type: .scalar(String.self)),
                      GraphQLField("content", type: .scalar(String.self)),
                      GraphQLField("cover", type: .scalar(String.self)),
                      GraphQLField("url", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, author: String? = nil, desc: String? = nil, content: String? = nil, cover: String? = nil, url: String? = nil, duration: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "BookClub", "id": id, "name": name, "author": author, "desc": desc, "content": content, "cover": cover, "url": url, "duration": duration])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 音频作者
                    public var author: String? {
                      get {
                        return resultMap["author"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "author")
                      }
                    }

                    /// 描述
                    public var desc: String? {
                      get {
                        return resultMap["desc"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "desc")
                      }
                    }

                    /// 文字稿
                    public var content: String? {
                      get {
                        return resultMap["content"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "content")
                      }
                    }

                    /// 封面图
                    public var cover: String? {
                      get {
                        return resultMap["cover"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "cover")
                      }
                    }

                    /// 资源链接
                    public var url: String? {
                      get {
                        return resultMap["url"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "url")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }
                  }

                  public struct InfluencerGuideReading: GraphQLSelectionSet {
                    public static let possibleTypes = ["InfluencerGuideReading"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("headerImage", type: .scalar(String.self)),
                      GraphQLField("wechatGroupQrcode", type: .scalar(String.self)),
                      GraphQLField("isFinished", type: .scalar(Bool.self)),
                      GraphQLField("endTime", type: .scalar(Int.self)),
                      GraphQLField("albums", type: .list(.object(Album.selections))),
                      GraphQLField("lecturers", type: .list(.object(Lecturer.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(headerImage: String? = nil, wechatGroupQrcode: String? = nil, isFinished: Bool? = nil, endTime: Int? = nil, albums: [Album?]? = nil, lecturers: [Lecturer?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "InfluencerGuideReading", "headerImage": headerImage, "wechatGroupQrcode": wechatGroupQrcode, "isFinished": isFinished, "endTime": endTime, "albums": albums.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, "lecturers": lecturers.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 头图
                    public var headerImage: String? {
                      get {
                        return resultMap["headerImage"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "headerImage")
                      }
                    }

                    /// 购买后群二维码
                    public var wechatGroupQrcode: String? {
                      get {
                        return resultMap["wechatGroupQrcode"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "wechatGroupQrcode")
                      }
                    }

                    /// 是否已完结
                    public var isFinished: Bool? {
                      get {
                        return resultMap["isFinished"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFinished")
                      }
                    }

                    /// 预计完成时间
                    public var endTime: Int? {
                      get {
                        return resultMap["endTime"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "endTime")
                      }
                    }

                    /// 专辑
                    public var albums: [Album?]? {
                      get {
                        return (resultMap["albums"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Album?] in value.map { (value: ResultMap?) -> Album? in value.flatMap { (value: ResultMap) -> Album in Album(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Album?]) -> [ResultMap?] in value.map { (value: Album?) -> ResultMap? in value.flatMap { (value: Album) -> ResultMap in value.resultMap } } }, forKey: "albums")
                      }
                    }

                    /// 主讲人列表
                    public var lecturers: [Lecturer?]? {
                      get {
                        return (resultMap["lecturers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Lecturer?] in value.map { (value: ResultMap?) -> Lecturer? in value.flatMap { (value: ResultMap) -> Lecturer in Lecturer(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Lecturer?]) -> [ResultMap?] in value.map { (value: Lecturer?) -> ResultMap? in value.flatMap { (value: Lecturer) -> ResultMap in value.resultMap } } }, forKey: "lecturers")
                      }
                    }

                    public struct Album: GraphQLSelectionSet {
                      public static let possibleTypes = ["InfluencerGuideReadingAlbum"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("image", type: .scalar(String.self)),
                        GraphQLField("sections", type: .list(.object(Section.selections))),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, image: String? = nil, sections: [Section?]? = nil) {
                        self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingAlbum", "id": id, "name": name, "image": image, "sections": sections.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
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

                      /// 封面图
                      public var image: String? {
                        get {
                          return resultMap["image"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "image")
                        }
                      }

                      /// 分片列表
                      public var sections: [Section?]? {
                        get {
                          return (resultMap["sections"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Section?] in value.map { (value: ResultMap?) -> Section? in value.flatMap { (value: ResultMap) -> Section in Section(unsafeResultMap: value) } } }
                        }
                        set {
                          resultMap.updateValue(newValue.flatMap { (value: [Section?]) -> [ResultMap?] in value.map { (value: Section?) -> ResultMap? in value.flatMap { (value: Section) -> ResultMap in value.resultMap } } }, forKey: "sections")
                        }
                      }

                      public struct Section: GraphQLSelectionSet {
                        public static let possibleTypes = ["InfluencerGuideReadingSection"]

                        public static let selections: [GraphQLSelection] = [
                          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                          GraphQLField("id", type: .scalar(Int.self)),
                          GraphQLField("name", type: .scalar(String.self)),
                          GraphQLField("audios", type: .list(.object(Audio.selections))),
                        ]

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                          self.resultMap = unsafeResultMap
                        }

                        public init(id: Int? = nil, name: String? = nil, audios: [Audio?]? = nil) {
                          self.init(unsafeResultMap: ["__typename": "InfluencerGuideReadingSection", "id": id, "name": name, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
                        }

                        public var __typename: String {
                          get {
                            return resultMap["__typename"]! as! String
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                          }
                        }

                        public var id: Int? {
                          get {
                            return resultMap["id"] as? Int
                          }
                          set {
                            resultMap.updateValue(newValue, forKey: "id")
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

                        /// 音频列表
                        public var audios: [Audio?]? {
                          get {
                            return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                          }
                          set {
                            resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                          }
                        }

                        public struct Audio: GraphQLSelectionSet {
                          public static let possibleTypes = ["Audio"]

                          public static let selections: [GraphQLSelection] = [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .scalar(Int.self)),
                            GraphQLField("name", type: .scalar(String.self)),
                            GraphQLField("url", type: .scalar(String.self)),
                            GraphQLField("duration", type: .scalar(Int.self)),
                            GraphQLField("isFree", type: .scalar(Bool.self)),
                            GraphQLField("isLast", type: .scalar(Bool.self)),
                          ]

                          public private(set) var resultMap: ResultMap

                          public init(unsafeResultMap: ResultMap) {
                            self.resultMap = unsafeResultMap
                          }

                          public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                            self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                          }

                          public var __typename: String {
                            get {
                              return resultMap["__typename"]! as! String
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "__typename")
                            }
                          }

                          public var id: Int? {
                            get {
                              return resultMap["id"] as? Int
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "id")
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

                          /// 资源链接
                          public var url: String? {
                            get {
                              return resultMap["url"] as? String
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "url")
                            }
                          }

                          /// 时长（秒）
                          public var duration: Int? {
                            get {
                              return resultMap["duration"] as? Int
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "duration")
                            }
                          }

                          /// 是否免费
                          public var isFree: Bool? {
                            get {
                              return resultMap["isFree"] as? Bool
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "isFree")
                            }
                          }

                          /// 是否最后一章节
                          public var isLast: Bool? {
                            get {
                              return resultMap["isLast"] as? Bool
                            }
                            set {
                              resultMap.updateValue(newValue, forKey: "isLast")
                            }
                          }
                        }
                      }
                    }

                    public struct Lecturer: GraphQLSelectionSet {
                      public static let possibleTypes = ["RelatedPerson"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("intro", type: .scalar(String.self)),
                        GraphQLField("image", type: .scalar(String.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(name: String? = nil, intro: String? = nil, image: String? = nil) {
                        self.init(unsafeResultMap: ["__typename": "RelatedPerson", "name": name, "intro": intro, "image": image])
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

                      /// 简介
                      public var intro: String? {
                        get {
                          return resultMap["intro"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "intro")
                        }
                      }

                      /// 图片
                      public var image: String? {
                        get {
                          return resultMap["image"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "image")
                        }
                      }
                    }
                  }

                  public struct AudioBook: GraphQLSelectionSet {
                    public static let possibleTypes = ["AudioBook"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("isFinished", type: .scalar(Bool.self)),
                      GraphQLField("endDate", type: .scalar(String.self)),
                      GraphQLField("audios", type: .list(.object(Audio.selections))),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(isFinished: Bool? = nil, endDate: String? = nil, audios: [Audio?]? = nil) {
                      self.init(unsafeResultMap: ["__typename": "AudioBook", "isFinished": isFinished, "endDate": endDate, "audios": audios.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    /// 是否已完结
                    public var isFinished: Bool? {
                      get {
                        return resultMap["isFinished"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "isFinished")
                      }
                    }

                    /// 预计完成时间
                    public var endDate: String? {
                      get {
                        return resultMap["endDate"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "endDate")
                      }
                    }

                    /// 音频列表
                    public var audios: [Audio?]? {
                      get {
                        return (resultMap["audios"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Audio?] in value.map { (value: ResultMap?) -> Audio? in value.flatMap { (value: ResultMap) -> Audio in Audio(unsafeResultMap: value) } } }
                      }
                      set {
                        resultMap.updateValue(newValue.flatMap { (value: [Audio?]) -> [ResultMap?] in value.map { (value: Audio?) -> ResultMap? in value.flatMap { (value: Audio) -> ResultMap in value.resultMap } } }, forKey: "audios")
                      }
                    }

                    public struct Audio: GraphQLSelectionSet {
                      public static let possibleTypes = ["Audio"]

                      public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(Int.self)),
                        GraphQLField("name", type: .scalar(String.self)),
                        GraphQLField("url", type: .scalar(String.self)),
                        GraphQLField("duration", type: .scalar(Int.self)),
                        GraphQLField("isFree", type: .scalar(Bool.self)),
                        GraphQLField("isLast", type: .scalar(Bool.self)),
                      ]

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: Int? = nil, name: String? = nil, url: String? = nil, duration: Int? = nil, isFree: Bool? = nil, isLast: Bool? = nil) {
                        self.init(unsafeResultMap: ["__typename": "Audio", "id": id, "name": name, "url": url, "duration": duration, "isFree": isFree, "isLast": isLast])
                      }

                      public var __typename: String {
                        get {
                          return resultMap["__typename"]! as! String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "__typename")
                        }
                      }

                      public var id: Int? {
                        get {
                          return resultMap["id"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "id")
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

                      /// 资源链接
                      public var url: String? {
                        get {
                          return resultMap["url"] as? String
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "url")
                        }
                      }

                      /// 时长（秒）
                      public var duration: Int? {
                        get {
                          return resultMap["duration"] as? Int
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "duration")
                        }
                      }

                      /// 是否免费
                      public var isFree: Bool? {
                        get {
                          return resultMap["isFree"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isFree")
                        }
                      }

                      /// 是否最后一章节
                      public var isLast: Bool? {
                        get {
                          return resultMap["isLast"] as? Bool
                        }
                        set {
                          resultMap.updateValue(newValue, forKey: "isLast")
                        }
                      }
                    }
                  }

                  public struct LiveReplay: GraphQLSelectionSet {
                    public static let possibleTypes = ["LiveReplay"]

                    public static let selections: [GraphQLSelection] = [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(Int.self)),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("image", type: .scalar(String.self)),
                      GraphQLField("videoUrl", type: .scalar(String.self)),
                      GraphQLField("desc", type: .scalar(String.self)),
                      GraphQLField("content", type: .scalar(String.self)),
                      GraphQLField("lecturer", type: .scalar(String.self)),
                      GraphQLField("duration", type: .scalar(Int.self)),
                    ]

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: Int? = nil, name: String? = nil, image: String? = nil, videoUrl: String? = nil, desc: String? = nil, content: String? = nil, lecturer: String? = nil, duration: Int? = nil) {
                      self.init(unsafeResultMap: ["__typename": "LiveReplay", "id": id, "name": name, "image": image, "videoUrl": videoUrl, "desc": desc, "content": content, "lecturer": lecturer, "duration": duration])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var id: Int? {
                      get {
                        return resultMap["id"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "id")
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

                    /// 图片
                    public var image: String? {
                      get {
                        return resultMap["image"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "image")
                      }
                    }

                    /// 视频路径
                    public var videoUrl: String? {
                      get {
                        return resultMap["videoUrl"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "videoUrl")
                      }
                    }

                    /// 说明
                    public var desc: String? {
                      get {
                        return resultMap["desc"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "desc")
                      }
                    }

                    /// 简介（TEXT）
                    public var content: String? {
                      get {
                        return resultMap["content"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "content")
                      }
                    }

                    /// 主讲人
                    public var lecturer: String? {
                      get {
                        return resultMap["lecturer"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "lecturer")
                      }
                    }

                    /// 时长（秒）
                    public var duration: Int? {
                      get {
                        return resultMap["duration"] as? Int
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "duration")
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
