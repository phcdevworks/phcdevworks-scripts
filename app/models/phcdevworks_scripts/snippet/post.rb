module PhcdevworksScripts
  class Snippet::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::SnippetPostVersions'

    # Relationships
    has_many :urls, class_name: 'PhcdevworksScripts::Snippet::Url'

    # Form Fields Validation
    validates :snippet_title,
      presence: true

    validates :snippet_code,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_snippet_post_nice_urls, use: [:slugged, :finders]

    def phcdev_snippet_post_nice_urls
      [:snippet_title]
    end

  end
end
