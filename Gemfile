source "https://rubygems.org"
source "https://gem.fury.io/crushlovely/"

ruby File.read(".ruby-version").strip

gem "padrino"

gem "rake"
gem "foreman"
gem "puma"

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
