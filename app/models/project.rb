class Project < ApplicationRecord
  CATEGORIES = ["Music", "Artwork", "Video"]

  has_many :likes
  belongs_to :user

  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  # Implement the gem pg_search for the search bar
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :category ],
    associated_against: {
      user: [ :first_name, :last_name, :nickname ]
    },
    using: {
      tsearch: { prefix: true }
    }

  # Convert Spotify URL given by the user into a URL which can be embedded in HTML
  def music_embed_url
    return if music_url.blank?

    regex = /track\/(?<spotify_id>\w+)\?/
    spotify_id = music_url.match(regex)[:spotify_id]

    return "https://open.spotify.com/embed/track/#{spotify_id}?utm_source=generator&theme=0"
  end

  # Convert YouTube URL given by the user into a URL which can be embedded in HTML
  def youtube_embed_url
    return if video_url.blank?

    regex1 = /be\/(?<youtube_id>.+)/
    regex2 = /v=(?<youtube_id>.+)/

    if video_url.match(regex1).present?
      youtube_id = video_url.match(regex1)[:youtube_id]
    elsif video_url.match(regex2).present?
      youtube_id = video_url.match(regex2)[:youtube_id]
    end

    return "https://www.youtube.com/embed/#{youtube_id}"
  end
end
