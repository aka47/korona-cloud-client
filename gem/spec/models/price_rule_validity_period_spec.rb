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

# Unit tests for KoronaCloudClient::PriceRuleValidityPeriod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::PriceRuleValidityPeriod do
  let(:instance) { KoronaCloudClient::PriceRuleValidityPeriod.new }

  describe 'test an instance of PriceRuleValidityPeriod' do
    it 'should create an instance of PriceRuleValidityPeriod' do
      expect(instance).to be_instance_of(KoronaCloudClient::PriceRuleValidityPeriod)
    end
  end
  describe 'test attribute "date_interval"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "repetition_interval"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "time_of_day_interval"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
