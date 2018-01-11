import PhoenixKitsuCore
import Requestable

public class MediaReaction: KitsuObject<MediaReactionAttributes>, Requestable {
  public static var requestURLString = "media-reactions"
}

public class MediaReactionAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let reaction: String?
  public let upVotesCount: Int
}
