module PhcdevworksScripts
  class Script::Author < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::AuthorVersions'

    # Relationships
    has_many :listings, class_name: 'PhcdevworksScripts::Script::Listing'

    # Form Fields Validation
    validates :author_first_name,
    presence: true

    validates :author_website,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :author_github,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    # Clean URL Define
    friendly_id :phcdev_script_author_nice_urls, use: [:slugged, :finders]

    def phcdev_script_author_nice_urls
      [
        [:author_first_name, :author_last_name]
      ]
    end

  end
end
