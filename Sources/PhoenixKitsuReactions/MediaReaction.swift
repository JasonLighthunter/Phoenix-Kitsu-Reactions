import PhoenixKitsuCore

public class MediaReaction: KitsuObject {
  public static var requestURLString = "media-reactions"

  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: MediaReactionAttributes?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class MediaReactionAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let reaction: String?
  public let upVotesCount: Int
}
