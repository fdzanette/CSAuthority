source 'https://www.rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '~> 3.2.2'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.4'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.0.0.beta2'
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'faker', '~> 2.18.0'
end

group :test do
  gem 'capybara', '>= 3.35.3'
  gem 'database_cleaner-active_record', '~> 2.1.0'
end

group :production do
  gem 'pg', '~> 1.2.3'
end
