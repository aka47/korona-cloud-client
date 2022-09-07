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

# Unit tests for KoronaCloudClient::ReceiptLayoutConfigurationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReceiptLayoutConfigurationsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::ReceiptLayoutConfigurationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReceiptLayoutConfigurationsApi' do
    it 'should create an instance of ReceiptLayoutConfigurationsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::ReceiptLayoutConfigurationsApi)
    end
  end

  # unit tests for add_receipt_layout_configurations
  # adds a batch of new receipt layout configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new receipt layout configurations
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_receipt_layout_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_receipt_layout_configuration
  # deletes the single receipt layout configuration
  # @param korona_account_id account id of the KORONA.cloud account
  # @param receipt_layout_configuration_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_receipt_layout_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_receipt_layout_configurations
  # deletes a batch of receipt layout configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing receipt layout configurations (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_receipt_layout_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipt_layout_configuration
  # returns the single receipt layout configuration
  # @param korona_account_id account id of the KORONA.cloud account
  # @param receipt_layout_configuration_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [ReceiptLayoutConfiguration]
  describe 'get_receipt_layout_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipt_layout_configurations
  # lists all receipt layout configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListReceiptLayoutConfiguration]
  describe 'get_receipt_layout_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_receipt_layout_configuration
  # updates the single receipt layout configuration
  # if [number] is set, the number of the object will change and the resource location as well
  # @param korona_account_id account id of the KORONA.cloud account
  # @param receipt_layout_configuration_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the receipt layout configuration
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_receipt_layout_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_receipt_layout_configurations
  # updates a batch of receipt layout configurations
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of existing receipt layout configurations
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_receipt_layout_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
