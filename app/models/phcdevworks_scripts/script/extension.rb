module PhcdevworksScripts
  class Script::Extension < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::ExtensionVersions'

    # Relationships
    has_many :listings, class_name: 'PhcdevworksScripts::Script::Listing', :through => :urls
    has_many :urls, class_name: 'PhcdevworksScripts::Script::Url'

    # Form Fields Validation
    validates :extension_name,
      presence: true

    validates :extension_description,
      presence: true

    validates :extension,
      presence: true
    
    # Clean URL Define
    friendly_id :phcdev_script_extension_nice_urls, use: [:slugged, :finders]

    def phcdev_script_extension_nice_urls
      [:extension]
    end

  end
end
