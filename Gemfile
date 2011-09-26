source :rubygems

# Specify all dependencies in locomotive_cms.gemspec
gemspec

# Set an special require statements here. No versions, though. Leave those
# in locomotive.gemspec
gem 'devise_bushido_authenticatable', :require => 'devise_cas_authenticatable'
gem 'locomotive_mongoid_acts_as_tree', :require => 'mongoid_acts_as_tree'
gem 'locomotive_liquid', :require => 'liquid'
gem 'rmagick', :require => 'RMagick'
gem 'rack-cache', :require => 'rack/cache'
gem 'actionmailer-with-request', :require => 'actionmailer_with_request'
gem 'locomotive_jammit-s3', :require => 'jammit-s3'

group :development do
  gem 'ruby-debug19', :platforms => :mri_19, :require => 'ruby-debug'
end