source 'https://rubygems.org'

gem 'rails', '3.2.21'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.5'  
  gem 'uglifier'
  gem 'therubyracer', '~> 0.12.1'
end

gem 'jquery-rails'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug'
  gem 'mysql2', '0.3.14'
end

group :development do
  gem 'letter_opener'
  gem 'rails-dev-boost', :git => 'git://github.com/thedarkone/rails-dev-boost.git', :require => 'rails_development_boost'
end