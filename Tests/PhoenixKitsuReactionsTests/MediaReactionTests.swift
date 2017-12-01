import XCTest
@testable import PhoenixKitsuReactions

class MediaReactionTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "4",
    "type": "mediaReactions",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reactions/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "reaction": "A well-crafted story of paradoxical pain and suffering.",
      "upVotesCount": 6
    ]
  ]

  let validMissingDataJSON: [String : Any] = [
    "id": "4",
    "type": "mediaReactions",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reactions/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "upVotesCount": 6
    ]
  ]
  
  let validNilDataJSON: [String : Any] = [
    "id": "4",
    "type": "mediaReactions",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reactions/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "reaction": nil,
      "upVotesCount": 6
    ]
  ]

  let invalidMissingDataJSON: [String : Any] = [
    "id": "",
    "links": [
      "self": "https://kitsu.io/api/edge/mediaReactions/4"
    ],
    "attributes": [
      "createdAt": "",
      "updatedAt": "",
      "reaction": "",
      "upVotesCount": 6
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": nil,
    "links": [
      "self": "https://kitsu.io/api/edge/mediaReactions/4"
    ],
    "attributes": [
      "createdAt": "",
      "updatedAt": "",
      "reaction": "",
      "upVotesCount": 6
    ]
  ]

  var mediaReaction: MediaReaction?
  var mediaReactionAttributes: MediaReactionAttributes?

  override func tearDown() {
    mediaReaction = nil
    mediaReactionAttributes = nil

    super.tearDown()
  }

  func testMediaReactionFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReaction = try? decoder.decode(MediaReaction.self, from: data!)
    } else {
      mediaReaction = nil
    }
    mediaReactionAttributes = mediaReaction?.attributes

    XCTAssertNotNil(mediaReaction)

    XCTAssertEqual(mediaReaction?.objectID, "4")
    XCTAssertEqual(mediaReaction?.type, "mediaReactions")

    XCTAssertNotNil(mediaReactionAttributes)

    XCTAssertEqual(mediaReactionAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionAttributes?.reaction,
                   "A well-crafted story of paradoxical pain and suffering.")
    XCTAssertEqual(mediaReactionAttributes?.upVotesCount, 6)
  }

  func testMediaReactionValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReaction = try? decoder.decode(MediaReaction.self, from: data!)
    } else {
      mediaReaction = nil
    }
    mediaReactionAttributes = mediaReaction?.attributes

    XCTAssertNotNil(mediaReaction)

    XCTAssertEqual(mediaReaction?.objectID, "4")
    XCTAssertEqual(mediaReaction?.type, "mediaReactions")

    XCTAssertNotNil(mediaReactionAttributes)
    
    XCTAssertEqual(mediaReactionAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertNil(mediaReactionAttributes?.reaction)
    XCTAssertEqual(mediaReactionAttributes?.upVotesCount, 6)
  }
  
  func testMediaReactionValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReaction = try? decoder.decode(MediaReaction.self, from: data!)
    } else {
      mediaReaction = nil
    }
    mediaReactionAttributes = mediaReaction?.attributes
    
    XCTAssertNotNil(mediaReaction)
    
    XCTAssertEqual(mediaReaction?.objectID, "4")
    XCTAssertEqual(mediaReaction?.type, "mediaReactions")
    
    XCTAssertNotNil(mediaReactionAttributes)
    
    XCTAssertEqual(mediaReactionAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertNil(mediaReactionAttributes?.reaction)
    XCTAssertEqual(mediaReactionAttributes?.upVotesCount, 6)
  }

  func testMediaReactionNegativeMissingData() {
    let json = invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReaction = try? decoder.decode(MediaReaction.self, from: data!)
    } else {
      mediaReaction = nil
    }

    XCTAssertNil(mediaReaction)
  }
  
  func testMediaReactionInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReaction = try? decoder.decode(MediaReaction.self, from: data!)
    } else {
      mediaReaction = nil
    }
    
    XCTAssertNil(mediaReaction)
  }
}
