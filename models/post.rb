class Post < ActiveRecord::Base
  include Sha1ModelHasher
end
