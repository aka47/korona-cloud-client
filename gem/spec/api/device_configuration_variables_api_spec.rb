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

# Unit tests for KoronaCloudClient::DeviceConfigurationVariablesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeviceConfigurationVariablesApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeviceConfigurationVariablesApi' do
    it 'should create an instance of DeviceConfigurationVariablesApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::DeviceConfigurationVariablesApi)
    end
  end

  # unit tests for add_device_configuration_variables
  # adds a batch of new device configuration variables
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new device configuration variables
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_device_configuration_variables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device_configuration_variable
  # deletes the single device configuration variable
  # @param korona_account_id account id of the KORONA.cloud account
  # @param device_configuration_variable_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_device_configuration_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device_configuration_variables
  # deletes a batch of device configuration variables
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing device configuration variables (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_device_configuration_variables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_configuration_variable
  # returns the single device configuration variable
  # @param korona_account_id account id of the KORONA.cloud account
  # @param device_configuration_variable_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [DeviceConfigurationVariable]
  describe 'get_device_configuration_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_configuration_variables
  # lists all device configuration variables
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListDeviceConfigurationVariable]
  describe 'get_device_configuration_variables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_device_configuration_variables
  # updates a batch of device configuration variables
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing device configuration variables (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_device_configuration_variables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end