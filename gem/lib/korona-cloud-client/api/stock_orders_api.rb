=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.57
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module KoronaCloudClient
  class StockOrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # book the single stock order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def book_stock_order(korona_account_id, stock_order_id, opts = {})
      book_stock_order_with_http_info(korona_account_id, stock_order_id, opts)
      nil
    end

    # book the single stock order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def book_stock_order_with_http_info(korona_account_id, stock_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockOrdersApi.book_stock_order ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling StockOrdersApi.book_stock_order"
      end
      # verify the required parameter 'stock_order_id' is set
      if @api_client.config.client_side_validation && stock_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_order_id' when calling StockOrdersApi.book_stock_order"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/stockOrders/{stockOrderId}/book'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'stockOrderId' + '}', CGI.escape(stock_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"StockOrdersApi.book_stock_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockOrdersApi#book_stock_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # finalize the single stock order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finalize_stock_order(korona_account_id, stock_order_id, opts = {})
      finalize_stock_order_with_http_info(korona_account_id, stock_order_id, opts)
      nil
    end

    # finalize the single stock order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def finalize_stock_order_with_http_info(korona_account_id, stock_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockOrdersApi.finalize_stock_order ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling StockOrdersApi.finalize_stock_order"
      end
      # verify the required parameter 'stock_order_id' is set
      if @api_client.config.client_side_validation && stock_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_order_id' when calling StockOrdersApi.finalize_stock_order"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/stockOrders/{stockOrderId}/finalize'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'stockOrderId' + '}', CGI.escape(stock_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"StockOrdersApi.finalize_stock_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockOrdersApi#finalize_stock_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns a single stock order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_items include items of receipt (default: true; setting to false improves performance)
    # @return [StockOrder]
    def get_stock_order(korona_account_id, stock_order_id, opts = {})
      data, _status_code, _headers = get_stock_order_with_http_info(korona_account_id, stock_order_id, opts)
      data
    end

    # returns a single stock order
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_items include items of receipt (default: true; setting to false improves performance)
    # @return [Array<(StockOrder, Integer, Hash)>] StockOrder data, response status code and response headers
    def get_stock_order_with_http_info(korona_account_id, stock_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockOrdersApi.get_stock_order ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling StockOrdersApi.get_stock_order"
      end
      # verify the required parameter 'stock_order_id' is set
      if @api_client.config.client_side_validation && stock_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_order_id' when calling StockOrdersApi.get_stock_order"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/stockOrders/{stockOrderId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'stockOrderId' + '}', CGI.escape(stock_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeItems'] = opts[:'include_items'] if !opts[:'include_items'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StockOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"StockOrdersApi.get_stock_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockOrdersApi#get_stock_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all stock order items
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @return [ResultListStockOrderItem]
    def get_stock_order_items(korona_account_id, stock_order_id, opts = {})
      data, _status_code, _headers = get_stock_order_items_with_http_info(korona_account_id, stock_order_id, opts)
      data
    end

    # lists all stock order items
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param stock_order_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @return [Array<(ResultListStockOrderItem, Integer, Hash)>] ResultListStockOrderItem data, response status code and response headers
    def get_stock_order_items_with_http_info(korona_account_id, stock_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockOrdersApi.get_stock_order_items ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling StockOrdersApi.get_stock_order_items"
      end
      # verify the required parameter 'stock_order_id' is set
      if @api_client.config.client_side_validation && stock_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'stock_order_id' when calling StockOrdersApi.get_stock_order_items"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/stockOrders/{stockOrderId}/items'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'stockOrderId' + '}', CGI.escape(stock_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListStockOrderItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"StockOrdersApi.get_stock_order_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockOrdersApi#get_stock_order_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all stock orders
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [Time] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :organizational_unit organizational unit
    # @option opts [String] :source_organizational_unit source organizational unit
    # @option opts [String] :booking_status booking status (possible values: BOOKED, IN_PROGRESS)
    # @option opts [String] :number number of the related object
    # @option opts [Boolean] :finalized load only objects with this finalized status
    # @option opts [Boolean] :include_items include items of receipt (default: true; setting to false improves performance)
    # @return [ResultListStockOrder]
    def get_stock_orders(korona_account_id, opts = {})
      data, _status_code, _headers = get_stock_orders_with_http_info(korona_account_id, opts)
      data
    end

    # lists all stock orders
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [Time] :min_create_time min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_create_time max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :organizational_unit organizational unit
    # @option opts [String] :source_organizational_unit source organizational unit
    # @option opts [String] :booking_status booking status (possible values: BOOKED, IN_PROGRESS)
    # @option opts [String] :number number of the related object
    # @option opts [Boolean] :finalized load only objects with this finalized status
    # @option opts [Boolean] :include_items include items of receipt (default: true; setting to false improves performance)
    # @return [Array<(ResultListStockOrder, Integer, Hash)>] ResultListStockOrder data, response status code and response headers
    def get_stock_orders_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockOrdersApi.get_stock_orders ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling StockOrdersApi.get_stock_orders"
      end
      allowable_values = ["BOOKED", "IN_PROGRESS"]
      if @api_client.config.client_side_validation && opts[:'booking_status'] && !allowable_values.include?(opts[:'booking_status'])
        fail ArgumentError, "invalid value for \"booking_status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/stockOrders'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'minCreateTime'] = opts[:'min_create_time'] if !opts[:'min_create_time'].nil?
      query_params[:'maxCreateTime'] = opts[:'max_create_time'] if !opts[:'max_create_time'].nil?
      query_params[:'minBookingTime'] = opts[:'min_booking_time'] if !opts[:'min_booking_time'].nil?
      query_params[:'maxBookingTime'] = opts[:'max_booking_time'] if !opts[:'max_booking_time'].nil?
      query_params[:'organizationalUnit'] = opts[:'organizational_unit'] if !opts[:'organizational_unit'].nil?
      query_params[:'sourceOrganizationalUnit'] = opts[:'source_organizational_unit'] if !opts[:'source_organizational_unit'].nil?
      query_params[:'bookingStatus'] = opts[:'booking_status'] if !opts[:'booking_status'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'finalized'] = opts[:'finalized'] if !opts[:'finalized'].nil?
      query_params[:'includeItems'] = opts[:'include_items'] if !opts[:'include_items'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListStockOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"StockOrdersApi.get_stock_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockOrdersApi#get_stock_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
