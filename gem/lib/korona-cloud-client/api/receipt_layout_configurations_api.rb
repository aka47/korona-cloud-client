=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.19.20
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module KoronaCloudClient
  class ReceiptLayoutConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new receipt layout configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<ReceiptLayoutConfiguration>] array of new receipt layout configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
    # @return [Array<AddOrUpdateResult>]
    def add_receipt_layout_configurations(korona_account_id, body, opts = {})
      data, _status_code, _headers = add_receipt_layout_configurations_with_http_info(korona_account_id, body, opts)
      data
    end

    # adds a batch of new receipt layout configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<ReceiptLayoutConfiguration>] array of new receipt layout configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_receipt_layout_configurations_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.add_receipt_layout_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.add_receipt_layout_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReceiptLayoutConfigurationsApi.add_receipt_layout_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'upsert'] = opts[:'upsert'] if !opts[:'upsert'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ReceiptLayoutConfigurationsApi.add_receipt_layout_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#add_receipt_layout_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes the single receipt layout configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_layout_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id, opts = {})
      delete_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, opts)
      nil
    end

    # deletes the single receipt layout configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_layout_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.delete_receipt_layout_configuration ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.delete_receipt_layout_configuration"
      end
      # verify the required parameter 'receipt_layout_configuration_id' is set
      if @api_client.config.client_side_validation && receipt_layout_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_layout_configuration_id' when calling ReceiptLayoutConfigurationsApi.delete_receipt_layout_configuration"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations/{receiptLayoutConfigurationId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'receiptLayoutConfigurationId' + '}', CGI.escape(receipt_layout_configuration_id.to_s))

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
        :operation => :"ReceiptLayoutConfigurationsApi.delete_receipt_layout_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#delete_receipt_layout_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a batch of receipt layout configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<ReceiptLayoutConfiguration>] array of existing receipt layout configurations (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def delete_receipt_layout_configurations(korona_account_id, body, opts = {})
      data, _status_code, _headers = delete_receipt_layout_configurations_with_http_info(korona_account_id, body, opts)
      data
    end

    # deletes a batch of receipt layout configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<ReceiptLayoutConfiguration>] array of existing receipt layout configurations (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def delete_receipt_layout_configurations_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.delete_receipt_layout_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.delete_receipt_layout_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReceiptLayoutConfigurationsApi.delete_receipt_layout_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ReceiptLayoutConfigurationsApi.delete_receipt_layout_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#delete_receipt_layout_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single receipt layout configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_layout_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [ReceiptLayoutConfiguration]
    def get_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id, opts = {})
      data, _status_code, _headers = get_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, opts)
      data
    end

    # returns the single receipt layout configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_layout_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReceiptLayoutConfiguration, Integer, Hash)>] ReceiptLayoutConfiguration data, response status code and response headers
    def get_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.get_receipt_layout_configuration ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.get_receipt_layout_configuration"
      end
      # verify the required parameter 'receipt_layout_configuration_id' is set
      if @api_client.config.client_side_validation && receipt_layout_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_layout_configuration_id' when calling ReceiptLayoutConfigurationsApi.get_receipt_layout_configuration"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations/{receiptLayoutConfigurationId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'receiptLayoutConfigurationId' + '}', CGI.escape(receipt_layout_configuration_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ReceiptLayoutConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ReceiptLayoutConfigurationsApi.get_receipt_layout_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#get_receipt_layout_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all receipt layout configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [ResultListReceiptLayoutConfiguration]
    def get_receipt_layout_configurations(korona_account_id, opts = {})
      data, _status_code, _headers = get_receipt_layout_configurations_with_http_info(korona_account_id, opts)
      data
    end

    # lists all receipt layout configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListReceiptLayoutConfiguration, Integer, Hash)>] ResultListReceiptLayoutConfiguration data, response status code and response headers
    def get_receipt_layout_configurations_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.get_receipt_layout_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.get_receipt_layout_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListReceiptLayoutConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ReceiptLayoutConfigurationsApi.get_receipt_layout_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#get_receipt_layout_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates the single receipt layout configuration
    # if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_layout_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param body [ReceiptLayoutConfiguration] the properties to update of the receipt layout configuration
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_receipt_layout_configuration(korona_account_id, receipt_layout_configuration_id, body, opts = {})
      update_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, body, opts)
      nil
    end

    # updates the single receipt layout configuration
    # if [number] is set, the number of the object will change and the resource location as well
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param receipt_layout_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param body [ReceiptLayoutConfiguration] the properties to update of the receipt layout configuration
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_receipt_layout_configuration_with_http_info(korona_account_id, receipt_layout_configuration_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.update_receipt_layout_configuration ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.update_receipt_layout_configuration"
      end
      # verify the required parameter 'receipt_layout_configuration_id' is set
      if @api_client.config.client_side_validation && receipt_layout_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'receipt_layout_configuration_id' when calling ReceiptLayoutConfigurationsApi.update_receipt_layout_configuration"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReceiptLayoutConfigurationsApi.update_receipt_layout_configuration"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations/{receiptLayoutConfigurationId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'receiptLayoutConfigurationId' + '}', CGI.escape(receipt_layout_configuration_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ReceiptLayoutConfigurationsApi.update_receipt_layout_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#update_receipt_layout_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of receipt layout configurations
    # [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<ReceiptLayoutConfiguration>] an array of existing receipt layout configurations
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_receipt_layout_configurations(korona_account_id, body, opts = {})
      data, _status_code, _headers = update_receipt_layout_configurations_with_http_info(korona_account_id, body, opts)
      data
    end

    # updates a batch of receipt layout configurations
    # [number] must be set in the objects, otherwise the object cannot be updated
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<ReceiptLayoutConfiguration>] an array of existing receipt layout configurations
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_receipt_layout_configurations_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptLayoutConfigurationsApi.update_receipt_layout_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling ReceiptLayoutConfigurationsApi.update_receipt_layout_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ReceiptLayoutConfigurationsApi.update_receipt_layout_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/receiptLayoutConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"ReceiptLayoutConfigurationsApi.update_receipt_layout_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptLayoutConfigurationsApi#update_receipt_layout_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
