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

# Unit tests for KoronaCloudClient::PriceRulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PriceRulesApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::PriceRulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PriceRulesApi' do
    it 'should create an instance of PriceRulesApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::PriceRulesApi)
    end
  end

  # unit tests for add_price_rules
  # adds a batch of new price rules
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new price rules
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_price_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_price_rule
  # deletes the single price rule
  # @param korona_account_id account id of the KORONA.cloud account
  # @param price_rule_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_price_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_price_rules
  # deletes a batch of price rules
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing price rules (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_price_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_price_rule
  # returns the single price rule
  # @param korona_account_id account id of the KORONA.cloud account
  # @param price_rule_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [PriceRule]
  describe 'get_price_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_price_rules
  # lists all price rules
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListPriceRule]
  describe 'get_price_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_price_rule
  # updates the single price rule
  # @param korona_account_id account id of the KORONA.cloud account
  # @param price_rule_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the price rule
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_price_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_price_rules
  # updates a batch of price rules
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing price rules (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_price_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
