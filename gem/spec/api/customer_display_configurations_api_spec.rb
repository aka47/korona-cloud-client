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

# Unit tests for KoronaCloudClient::CustomerDisplayConfigurationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomerDisplayConfigurationsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::CustomerDisplayConfigurationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerDisplayConfigurationsApi' do
    it 'should create an instance of CustomerDisplayConfigurationsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::CustomerDisplayConfigurationsApi)
    end
  end

  # unit tests for add_customer_display_configurations
  # adds a batch of new customer display configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new customer display configurations
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_customer_display_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_customer_display_configuration
  # deletes the single customer display configuration
  # @param korona_account_id account id of the KORONA.cloud account
  # @param customer_display_configuration_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_customer_display_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_customer_display_configurations
  # deletes a batch of customer display configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of existing customer display configurations
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_customer_display_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_display_configuration
  # returns the single customer display configuration
  # @param korona_account_id account id of the KORONA.cloud account
  # @param customer_display_configuration_id the number of the customer display configuration
  # @param [Hash] opts the optional parameters
  # @return [CustomerDisplayConfiguration]
  describe 'get_customer_display_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_display_configurations
  # lists all customer display configurations
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListCustomerDisplayConfiguration]
  describe 'get_customer_display_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_customer_display_configurations
  # updates a batch of customer display configurations
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of existing customer display configurations
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_customer_display_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
