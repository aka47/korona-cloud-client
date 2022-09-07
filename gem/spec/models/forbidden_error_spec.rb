=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.19.20
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::ForbiddenError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::ForbiddenError do
  let(:instance) { KoronaCloudClient::ForbiddenError.new }

  describe 'test an instance of ForbiddenError' do
    it 'should create an instance of ForbiddenError' do
      expect(instance).to be_instance_of(KoronaCloudClient::ForbiddenError)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CLOUD_ACCOUNT_DISABLED", "POINT_OF_SALE_NOT_EXTERNAL", "POINT_OF_SALE_NOT_COUPLED", "POINT_OF_SALE_COUPLED_WITH_OTHER_DEVICE", "DELETE_NOT_ALLOWED", "SAVE_OR_UPDATE_NOT_ALLOWED", "ADDITIONAL_CLOUD_PACKAGE_REQUIRED", "ADDITIONAL_API_ACCESS_REQUIRED", "API_USAGE_DISABLED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.code = value }.not_to raise_error
      # end
    end
  end

end
