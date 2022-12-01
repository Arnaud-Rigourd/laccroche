class Project < ApplicationRecord
  CATEGORIES = ["Music", "Artwork", "Video"]

  has_many :likes
  belongs_to :user

  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  # include PG_search
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :category ],
    associated_against: {
      user: [ :first_name, :last_name, :nickname ]
    },
    using: {
      tsearch: { prefix: true }
    }
  # fin PG_Search

  # Convert Spotify URL given by the user into a URL which can be embedded in HTML
  # METHOD NEEDS TO BE TESTED WHEN THE NEW FORM IS UPDATED WITH MUSIC URL -- WORKS IN CONSOLE STEP BY STEP

  def music_embed_url
    return if music_url.blank?

    regex = /track\/(?<spotify_id>\w+)\?/
    spotify_id = music_url.match(regex)[:spotify_id]

    return "https://open.spotify.com/embed/track/#{spotify_id}?utm_source=generator&theme=0"
  end
end
