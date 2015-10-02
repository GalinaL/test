require "selenium-webdriver"
require "rspec"

require 'json'
require 'net/http'
require 'pry'
require 'watir-webdriver'


require_relative "../page_models/page_actions.rb"
Dir["../page_models/*.rb"].each {|file| require file}



SERVER_LABELS = {
    :production => "http://dev.fortwarehouse.com:8950",
    :trunk => "http://dev.fortwarehouse.com:8950",
    :integration => "http://dev.fortwarehouse.com:8950"
}

def get_browser
  (ENV['BROWSER'] || :firefox).to_sym
end

def get_environment
  # ENV['SERVER'] will read system variable from your machine
  env = (ENV['SERVER'] || :production).to_sym
  #get key value from SERVER_LABELS hash
  SERVER_LABELS[env]
end


def create_browser
  @browser = Selenium::WebDriver.for get_browser
end

def usps
  @usps ||= USPS.new @browser
end
