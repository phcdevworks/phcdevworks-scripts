module PhcdevworksScripts
  class Snippet::Url < ApplicationRecord

    # Include Core Validations
    phc_domain_regx = URI::regexp(%w(http https))

    # Relationships
    belongs_to :snippet, class_name: 'PhcdevworksScripts::Script::Snippet'

    # Form Fields Validation
    validates :snippet_url,
      presence: true,
      format: {  :with => phc_domain_regx, message: "Please follow this URL format http or https://www.**********.com" }

  end
end
