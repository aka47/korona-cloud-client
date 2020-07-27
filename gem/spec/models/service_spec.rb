=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.14.7
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::Service
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Service' do
  before do
    # run before each test
    @instance = KoronaCloudClient::Service.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Service' do
    it 'should create an instance of Service' do
      expect(@instance).to be_instance_of(KoronaCloudClient::Service)
    end
  end
  describe 'test attribute "parameter"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CASH", "MERCHANTWARE", "MERCURY", "LEGACY_ZVT", "KORONA_PREPAID", "CREDIT_AUTHORIZATION_TERMINAL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

end