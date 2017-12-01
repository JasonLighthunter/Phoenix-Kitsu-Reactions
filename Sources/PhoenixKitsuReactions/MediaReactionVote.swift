import PhoenixKitsuCore

public class MediaReactionVote: KitsuObject {
  public static var requestURLString = "media-reaction-votes"

  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: MediaReactionVoteAttributes?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class MediaReactionVoteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
