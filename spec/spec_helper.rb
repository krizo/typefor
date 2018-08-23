require 'rspec'
require 'pry'
require 'require_all'
require 'page-object'
require "rspec/wait"
require 'webdrivers'

require_all 'pages/'
require_all 'tasks/'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.color = true
  config.tty = true
  config.formatter = :documentation

  config.before(:all) do
    @browser = Watir::Browser.new(ENV['BROWSER'].to_sym || :chrome)
  end

  config.after(:all) do
    @browser.close
  end
end
