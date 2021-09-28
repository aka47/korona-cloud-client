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

# Unit tests for KoronaCloudClient::SpecialPriceConfigurationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SpecialPriceConfigurationsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SpecialPriceConfigurationsApi' do
    it 'should create an instance of SpecialPriceConfigurationsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::SpecialPriceConfigurationsApi)
    end
  end

  # unit tests for add_special_price_configurations
  # adds a batch of new special price configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new special price configurations
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_special_price_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_special_price_configurations
  # deletes a batch of special price configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing special price configurations (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_special_price_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_special_price_configuration
  # returns the single special price configuration
  # @param korona_account_id account id of the KORONA.cloud account
  # @param special_price_configuration_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [SpecialPriceConfiguration]
  describe 'get_special_price_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_special_price_configurations
  # lists all special price configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListSpecialPriceConfiguration]
  describe 'get_special_price_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_special_prices
  # returns the special prices for the given configuration
  # @param korona_account_id account id of the KORONA.cloud account
  # @param special_price_configuration_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [Array<SpecialPrice>]
  describe 'get_special_prices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_special_price_configurations
  # updates a batch of special price configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing special price configurations (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_special_price_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
