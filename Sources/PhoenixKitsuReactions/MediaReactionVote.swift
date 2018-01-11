import PhoenixKitsuCore
import Requestable

public class MediaReactionVote: KitsuObject<MediaReactionVoteAttributes>, Requestable {
  public static var requestURLString = "media-reaction-votes"
}

public class MediaReactionVoteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
