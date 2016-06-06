ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  DatabaseCleaner.strategy = :truncation
  setup do
    DatabaseCleaner.start
  end
  teardown do
    DatabaseCleaner.clean
    FileUtils.rm_rf(Dir["#{Rails.root}/spec/test_files/"])
  end
end
