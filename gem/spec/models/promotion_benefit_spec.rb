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

# Unit tests for KoronaCloudClient::PromotionBenefit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::PromotionBenefit do
  let(:instance) { KoronaCloudClient::PromotionBenefit.new }

  describe 'test an instance of PromotionBenefit' do
    it 'should create an instance of PromotionBenefit' do
      expect(instance).to be_instance_of(KoronaCloudClient::PromotionBenefit)
    end
  end
  describe 'test attribute "common"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "extended"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "layer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reduce_product_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["COMMON", "EXTENDED", "REDUCE_PRODUCT_AMOUNT"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end