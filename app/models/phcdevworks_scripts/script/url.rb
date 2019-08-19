module PhcdevworksScripts
  class Script::Url < ApplicationRecord

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::UrlVersions'

    # Relationships
    belongs_to :listing, class_name: 'PhcdevworksScripts::Script::Listing'
    belongs_to :extension, class_name: 'PhcdevworksScripts::Script::Extension'
    belongs_to :version, class_name: 'PhcdevworksScripts::Script::Version', optional: true

    # Form Fields Validation
    validates :script_cdn_url,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :script_cdn_url_release,
      presence: true

    validates :script_cdn_url_cdn_update,
      presence: true

  end
end
