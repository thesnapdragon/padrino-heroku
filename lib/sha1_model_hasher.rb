require "active_support/concern"
require "digest/sha1"

module Sha1ModelHasher
  extend ActiveSupport::Concern

  included do
    def sha1
      Digest::SHA1.hexdigest attributes.to_s
    end
  end

end
