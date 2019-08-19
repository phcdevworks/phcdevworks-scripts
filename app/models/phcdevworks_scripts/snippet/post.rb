module PhcdevworksScripts
  class Snippet::Post < ApplicationRecord

    # Include Core Validations
    include Phccorehelpers::Validations

    # Clean URL Initialize
    extend FriendlyId

    # Relationships
    has_many :urls, class_name: 'PhcdevworksScripts::Script::Url'

    # Form Fields Validation
    validates :snippet_title,
      presence: true

    validates :snippet_code,
      presence: true

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [:snippet_title]
    end

  end
end
