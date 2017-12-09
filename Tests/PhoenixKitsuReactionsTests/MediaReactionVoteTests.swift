import XCTest
@testable import PhoenixKitsuReactions

class MediaReactionVoteTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "4",
    "type": "mediaReactionVotes",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reaction-votes/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "4",
    "type": "mediaReactionVotes",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reaction-votes/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let validNilDataJSON: [String : Any] = [
    "id": "4",
    "type": "mediaReactionVotes",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reaction-votes/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "",
    "links": [
      "self": "https://kitsu.io/api/edge/media-reaction-votes/4"
    ],
    "attributes": [
      "createdAt": "",
      "updatedAt": ""
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": nil,
    "links": [
      "self": "https://kitsu.io/api/edge/media-reaction-votes/4"
    ],
    "attributes": [
      "createdAt": "",
      "updatedAt": ""
    ]
  ]

  var mediaReactionVote: MediaReactionVote?
  var mediaReactionVoteAttributes: MediaReactionVoteAttributes?
  
  override func tearDown() {
    mediaReactionVote = nil
    mediaReactionVoteAttributes = nil
    
    super.tearDown()
  }
  
  func testMediaReactionVoteFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReactionVote = try? decoder.decode(MediaReactionVote.self, from: data!)
    } else {
      mediaReactionVote = nil
    }
    mediaReactionVoteAttributes = mediaReactionVote?.attributes
    
    XCTAssertNotNil(mediaReactionVote)
    
    XCTAssertEqual(mediaReactionVote?.objectID, "4")
    XCTAssertEqual(mediaReactionVote?.type, "mediaReactionVotes")
    
    XCTAssertNotNil(mediaReactionVoteAttributes)
    
    XCTAssertEqual(mediaReactionVoteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionVoteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testMediaReactionVoteValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReactionVote = try? decoder.decode(MediaReactionVote.self, from: data!)
    } else {
      mediaReactionVote = nil
    }
    mediaReactionVoteAttributes = mediaReactionVote?.attributes
    
    XCTAssertNotNil(mediaReactionVote)
    
    XCTAssertEqual(mediaReactionVote?.objectID, "4")
    XCTAssertEqual(mediaReactionVote?.type, "mediaReactionVotes")
    
    XCTAssertNotNil(mediaReactionVoteAttributes)
    
    XCTAssertEqual(mediaReactionVoteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionVoteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testMediaReactionVoteValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReactionVote = try? decoder.decode(MediaReactionVote.self, from: data!)
    } else {
      mediaReactionVote = nil
    }
    mediaReactionVoteAttributes = mediaReactionVote?.attributes
    
    XCTAssertNotNil(mediaReactionVote)
    
    XCTAssertEqual(mediaReactionVote?.objectID, "4")
    XCTAssertEqual(mediaReactionVote?.type, "mediaReactionVotes")
    
    XCTAssertNotNil(mediaReactionVoteAttributes)
    
    XCTAssertEqual(mediaReactionVoteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(mediaReactionVoteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testMediaReactionVoteInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReactionVote = try? decoder.decode(MediaReactionVote.self, from: data!)
    } else {
      mediaReactionVote = nil
    }
    
    XCTAssertNil(mediaReactionVote)
  }
  
  func testMediaReactionVoteInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      mediaReactionVote = try? decoder.decode(MediaReactionVote.self, from: data!)
    } else {
      mediaReactionVote = nil
    }
    
    XCTAssertNil(mediaReactionVote)
  }
}
