=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::PromotionTriggerTagAmountCondition
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::PromotionTriggerTagAmountCondition do
  let(:instance) { KoronaCloudClient::PromotionTriggerTagAmountCondition.new }

  describe 'test an instance of PromotionTriggerTagAmountCondition' do
    it 'should create an instance of PromotionTriggerTagAmountCondition' do
      expect(instance).to be_instance_of(KoronaCloudClient::PromotionTriggerTagAmountCondition)
    end
  end
  describe 'test attribute "equality_condition"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EQUAL", "GREATER_OR_EQUAL"])
      # validator.allowable_values.each do |value|
      #   expect { instance.equality_condition = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "tag"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
