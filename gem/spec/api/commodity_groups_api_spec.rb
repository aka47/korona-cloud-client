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

# Unit tests for KoronaCloudClient::CommodityGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommodityGroupsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::CommodityGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommodityGroupsApi' do
    it 'should create an instance of CommodityGroupsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::CommodityGroupsApi)
    end
  end

  # unit tests for add_commodity_groups
  # adds a batch of new commodity groups
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of new commodity groups
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_commodity_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_commodity_group
  # deletes the single commodity group
  # @param korona_account_id account id of the KORONA.cloud account
  # @param commodity_group_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_commodity_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_commodity_groups
  # deletes a batch of commodity groups
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing commodity groups (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_commodity_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_commodity_group
  # returns the single commodity group
  # @param korona_account_id account id of the KORONA.cloud account
  # @param commodity_group_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [CommodityGroup]
  describe 'get_commodity_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_commodity_groups
  # lists all commodity groups
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListCommodityGroup]
  describe 'get_commodity_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_commodity_group
  # updates the single commodity group
  # @param korona_account_id account id of the KORONA.cloud account
  # @param commodity_group_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the commodity group
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_commodity_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_commodity_groups
  # updates a batch of commodity groups
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing commodity groups (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_commodity_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
