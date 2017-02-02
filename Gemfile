source "https://rubygems.org"
source "https://gem.fury.io/crushlovely/"

ruby File.read(".ruby-version").strip

gem "padrino"
gem "kaminari-core"
gem "kaminari-activerecord"
gem "padrino-pagination", git: "https://github.com/sumskyi/padrino-pagination.git"
gem "padrino-cookies"

gem "rake"
gem "foreman"
gem "puma"
gem "rack-cache"

gem "sass"
gem "haml"
gem "activerecord", ">= 3.1", :require => "active_record"
gem "pg"
gem "bcrypt"
gem "rack-iamnotarobot", :require => "rack/iamnotarobot"

group :test, :development do
  gem "dotenv"
  gem "rubocop"
  gem "shotgun"
end

group :test do
  gem "rspec"
  gem "rack-test", :require => "rack/test"
end
