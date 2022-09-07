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

# Unit tests for KoronaCloudClient::FiscalUnitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FiscalUnitsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::FiscalUnitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FiscalUnitsApi' do
    it 'should create an instance of FiscalUnitsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::FiscalUnitsApi)
    end
  end

  # unit tests for add_fiscal_units
  # adds a batch of fiscal units
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new fiscal units
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_fiscal_units test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fiscal_unit
  # returns the single fiscal unit
  # @param korona_account_id account id of the KORONA.cloud account
  # @param fiscal_unit_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [FiscalUnit]
  describe 'get_fiscal_unit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fiscal_units
  # lists all fiscal units
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @option opts [String] :type type of fiscal unit
  # @option opts [String] :api_key api key of fiscal unit
  # @return [ResultListFiscalUnit]
  describe 'get_fiscal_units test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fiscal_unit
  # updates the fiscal unit
  # @param korona_account_id account id of the KORONA.cloud account
  # @param fiscal_unit_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the fiscal unit
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_fiscal_unit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_fiscal_units
  # updates a batch of fiscal units
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing fiscal units (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_fiscal_units test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
