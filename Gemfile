source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'puma', '~> 4.3'
gem 'rails', '~> 5.2.4'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bcrypt'
gem 'mongoid'
gem 'rb-readline'
gem 'mongoid_token'
gem 'sigaedu_api', github: 'luizpicolo/sigaedu_api'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.3'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :staging, :production do
  gem 'passenger'
  gem 'mini_racer'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
