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

# Unit tests for KoronaCloudClient::PointsOfSaleApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PointsOfSaleApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::PointsOfSaleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PointsOfSaleApi' do
    it 'should create an instance of PointsOfSaleApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::PointsOfSaleApi)
    end
  end

  # unit tests for add_point_of_sale_end_of_day_statements
  # adds a batch of point of sale-related end-of-day-statements
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id id of the related object (important: id should match the uuid-format)
  # @param coupling_id the coupling-id of the device
  # @param [Hash] opts the optional parameters
  # @option opts [Array<EndOfDayStatement>] :body the end-of-day-statements to add
  # @return [Array<AddOrUpdateResult>]
  describe 'add_point_of_sale_end_of_day_statements test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_point_of_sale_receipts
  # adds a batch of point of sale-related receipts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id id of the related object (important: id should match the uuid-format)
  # @param coupling_id the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :disable_receipt_number_prefix prevents setting a prefix at the receipt number
  # @option opts [Array<Receipt>] :body the receipts to add
  # @return [Array<AddOrUpdateResult>]
  describe 'add_point_of_sale_receipts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_points_of_sale
  # adds a batch of new points of sale
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new points of sale
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_points_of_sale test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_point_of_sale
  # returns the single point of sale
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id the number of the point of sale
  # @param [Hash] opts the optional parameters
  # @option opts [String] :coupling_id the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  # @return [Pos]
  describe 'get_point_of_sale test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_point_of_sale_balances
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id point of sale
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Integer] :z_count z-count of the pos balance
  # @option opts [String] :cashier cashier id to filter by
  # @return [ResultListPosBalance]
  describe 'get_point_of_sale_balances test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_point_of_sale_end_of_day_statements
  # lists all point of sale-related end-of-day-statements
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :coupling_id the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Time] :min_finish_time min (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  # @option opts [Time] :max_finish_time max (inclusive) finish time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  # @option opts [Integer] :z_count zCount
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @return [ResultListEndOfDayStatement]
  describe 'get_point_of_sale_end_of_day_statements test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_point_of_sale_receipt
  # returns the single point of sale-related receipt
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id id of the related object (important: id should match the uuid-format)
  # @param receipt_id the id of the receipt
  # @param [Hash] opts the optional parameters
  # @option opts [String] :coupling_id the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  # @option opts [Boolean] :voided_items when set to true, voided items will included in response
  # @return [Receipt]
  describe 'get_point_of_sale_receipt test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_point_of_sale_receipts
  # lists all point of sale-related receipts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :coupling_id the coupling-id of the device. It can be set to check whether your coupling-id is correct or not (works only, if point of sale is external).
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Integer] :z_count z-count of the receipt
  # @option opts [Time] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  # @option opts [Time] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  # @option opts [String] :number number of the related object
  # @option opts [Time] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  # @option opts [Time] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  # @option opts [Boolean] :voided_items when set to true, voided items will included in response
  # @option opts [String] :order_number order number
  # @return [ResultListReceipt]
  describe 'get_point_of_sale_receipts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_points_of_sale
  # lists all points of sale
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @option opts [Boolean] :external indicates external/internal devices should be loaded (default: null (load all))
  # @option opts [Boolean] :coupled indicates coupled/not coupled devices should be loaded (default: null (load all))
  # @return [ResultListPos]
  describe 'get_points_of_sale test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_point_of_sale
  # updates the point of sale
  # @param korona_account_id account id of the KORONA.cloud account
  # @param point_of_sale_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the point of sale (&#39;couplingId&#39; only)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :coupling_id the coupling-id of the device (required if already coupled)
  # @option opts [Boolean] :decouple executes uncoupling, if set to true, device will be uncoupled if point of sale is already coupled
  # @return [nil]
  describe 'update_point_of_sale test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_points_of_sale
  # updates a batch of points of sale
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of existing points of sale
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_points_of_sale test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
