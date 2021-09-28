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

# Unit tests for KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelection
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelection do
  let(:instance) { KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelection.new }

  describe 'test an instance of PromotionBenefitExtendedDiscountPositionSelection' do
    it 'should create an instance of PromotionBenefitExtendedDiscountPositionSelection' do
      expect(instance).to be_instance_of(KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelection)
    end
  end
  describe 'test attribute "count_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "discount_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "filter"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sort"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["IRRELEVANT", "PRICE_ASCENDING", "PRICE_DESCENDING"])
      # validator.allowable_values.each do |value|
      #   expect { instance.sort = value }.not_to raise_error
      # end
    end
  end

end
