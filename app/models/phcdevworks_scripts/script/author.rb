module PhcdevworksScripts
  class Script::Author < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::ScriptAuthorVersions'

    # Relationships
    has_many :listings, class_name: 'PhcdevworksScripts::Script::Listing'

    # Form Fields Validation
    validates :script_author_first_name,
      presence: true

    validates :script_author_website,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :script_author_github,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    # Clean URL Define
    friendly_id :script_author_nice_urls, use: [:slugged, :finders]

    def script_author_nice_urls
      [:script_author_first_name, :script_author_last_name]
    end

  end
end
