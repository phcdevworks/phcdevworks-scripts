module PhcdevworksScripts
  class Script::Extension < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::ScriptExtensionVersions'

    # Relationships
    has_many :listings, class_name: 'PhcdevworksScripts::Script::Listing', :through => :urls
    has_many :urls, class_name: 'PhcdevworksScripts::Script::Url'

    # Form Fields Validation
    validates :script_extension_name,
      presence: true

    validates :script_extension_description,
      presence: true

    validates :script_extension,
      presence: true

    # Clean URL Define
    friendly_id :script_extension_nice_urls, use: [:slugged, :finders]

    def script_extension_nice_urls
      [:script_extension]
    end

  end
end
