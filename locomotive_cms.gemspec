# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'locomotive/version'

Gem::Specification.new do |s|
  s.name        = 'locomotive_cms'
  s.version     = Locomotive::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Didier Lafforgue']
  s.email       = ['didier@nocoffee.fr']
  s.homepage    = 'http://locomotiveapp.org'
  s.summary     = 'A Next Generation Sexy CMS for Rails3'
  s.description = 'Locomotive is a next generation CMS system with sexy admin tools, liquid templating, and inline editing powered by mongodb and rails3'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'nowarning'

  s.add_dependency 'rake', '0.9.2'

  s.add_dependency 'rails', '3.0.10'

  s.add_dependency 'warden'
  s.add_dependency 'devise', '1.3.4'
  s.add_dependency 'devise_bushido_authenticatable', '1.0.0.alpha10'

  s.add_dependency 'mongoid', '~> 2.0.2'
  s.add_dependency 'bson_ext', '~> 1.4.0'
  s.add_dependency 'locomotive_mongoid_acts_as_tree', '0.1.5.7'
  s.add_dependency 'will_paginate', '~> 3.0.0'

  s.add_dependency 'haml', '3.1.2'
  s.add_dependency 'sass', '3.1.2'
  s.add_dependency 'locomotive_liquid', '2.2.2'
  s.add_dependency 'formtastic', '~> 1.2.3'
  s.add_dependency 'inherited_resources', '~> 1.1.2'

  s.add_dependency 'rmagick', '~> 2.13.0'
  s.add_dependency 'carrierwave', '0.5.6'
  s.add_dependency 'dragonfly',  '~> 0.9.1'
  s.add_dependency 'rack-cache'

  s.add_dependency 'custom_fields', '1.0.0.beta.25'
  s.add_dependency 'cancan'
  s.add_dependency 'fog', '0.8.2'
  s.add_dependency 'mimetype-fu'
  s.add_dependency 'actionmailer-with-request'
  s.add_dependency 'heroku', '1.19.1'
  s.add_dependency 'httparty', '0.7.8'
  s.add_dependency 'RedCloth', '4.2.8'
  s.add_dependency 'delayed_job', '2.1.4'
  s.add_dependency 'delayed_job_mongoid', '1.0.2'
  s.add_dependency 'rubyzip'
  s.add_dependency 'locomotive_jammit-s3'

  if RUBY_VERSION =~ /1.8/
    s.add_dependency 'SystemTimer'
  end

  s.add_dependency 'cells'
  s.add_dependency 'sanitize'
  s.add_dependency 'highline'

  s.add_dependency 'bushido', '0.0.35'


  # The rest of the dependencies are for use when in the locomotive dev environment

  s.add_development_dependency 'unicorn' # Using unicorn_rails instead of webrick (default server)

  s.add_development_dependency 'rspec-rails', '2.6.1' # in order to have rspec tasks and generators

  s.add_development_dependency 'rspec-cells'

  if RUBY_VERSION =~ /1.8/
    s.add_development_dependency 'linecache', '0.43'
    s.add_development_dependency 'ruby-debug'
  end

  if RUBY_VERSION =~ /1.9/
    s.add_development_dependency 'ruby-debug19'
  end

  s.add_development_dependency 'bushido_stub', '0.0.3'

  s.add_development_dependency 'cucumber-rails', '1.0.2'

  s.add_development_dependency 'autotest'
  s.add_development_dependency 'ZenTest'
  s.add_development_dependency 'growl-glue'
  s.add_development_dependency 'rspec-rails', '2.6.1'
  s.add_development_dependency 'factory_girl_rails', '~> 1.1'
  s.add_development_dependency 'pickle'
  s.add_development_dependency 'xpath', '~> 0.1.4'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'

  s.add_development_dependency 'spork', '~> 0.9.0.rc'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'mocha', '0.9.12'


  s.files        = Dir[ 'Gemfile',
                        '{app}/**/*',
                        '{config}/**/*',
                        '{lib}/**/*',
                        '{public}/stylesheets/admin/**/*', '{public}/javascripts/admin/**/*', '{public}/images/admin/**/*',
                        '{vendor}/**/*']

  s.require_path = 'lib'

  s.extra_rdoc_files = [
    'LICENSE',
     'README.textile'
  ]

end
