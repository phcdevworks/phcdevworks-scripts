module PhcdevworksScripts
  class Snippet::Url < ApplicationRecord

    # Include Core Validations
    phc_domain_regx = URI::regexp(%w(http https))

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksScripts::SnippetUrlVersions'

    # Relationships
    belongs_to :post, class_name: 'PhcdevworksScripts::Snippet::Post'

    # Form Fields Validation
    validates :snippet_post_url,
      presence: true,
      format: {  :with => phc_domain_regx, message: "Please follow this URL format http or https://www.**********.com" }

  end
end
