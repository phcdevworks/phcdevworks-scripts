module PhcdevworksScripts
  class Script::Listing < ApplicationRecord
  
    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::ScriptListingVersions'

    # Relationships
    has_many :urls, class_name: 'PhcdevworksScripts::Script::Url', :dependent => :destroy
    belongs_to :author, class_name: 'PhcdevworksScripts::Script::Author'

    # Form Fields Validation
    validates :script_listing_title,
      presence: true

    validates :script_listing_description,
      presence: true

    validates :script_listing_script_source,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :script_listing_script_website,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :script_listing_script_repo,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    # Clean URL Define
    friendly_id :script_listing_nice_urls, use: [:slugged, :finders]

    def script_listing_nice_urls
      [:script_listing_title]
    end

  end
end
