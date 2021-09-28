=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module KoronaCloudClient
  class SpecialPriceConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds a batch of new special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<SpecialPriceConfiguration>] array of new special price configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
    # @return [Array<AddOrUpdateResult>]
    def add_special_price_configurations(korona_account_id, body, opts = {})
      data, _status_code, _headers = add_special_price_configurations_with_http_info(korona_account_id, body, opts)
      data
    end

    # adds a batch of new special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<SpecialPriceConfiguration>] array of new special price configurations
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_special_price_configurations_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpecialPriceConfigurationsApi.add_special_price_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling SpecialPriceConfigurationsApi.add_special_price_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SpecialPriceConfigurationsApi.add_special_price_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/specialPriceConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'upsert'] = opts[:'upsert'] if !opts[:'upsert'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"SpecialPriceConfigurationsApi.add_special_price_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpecialPriceConfigurationsApi#add_special_price_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a batch of special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<SpecialPriceConfiguration>] array of existing special price configurations (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def delete_special_price_configurations(korona_account_id, body, opts = {})
      data, _status_code, _headers = delete_special_price_configurations_with_http_info(korona_account_id, body, opts)
      data
    end

    # deletes a batch of special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<SpecialPriceConfiguration>] array of existing special price configurations (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def delete_special_price_configurations_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpecialPriceConfigurationsApi.delete_special_price_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling SpecialPriceConfigurationsApi.delete_special_price_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SpecialPriceConfigurationsApi.delete_special_price_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/specialPriceConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"SpecialPriceConfigurationsApi.delete_special_price_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpecialPriceConfigurationsApi#delete_special_price_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the single special price configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param special_price_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [SpecialPriceConfiguration]
    def get_special_price_configuration(korona_account_id, special_price_configuration_id, opts = {})
      data, _status_code, _headers = get_special_price_configuration_with_http_info(korona_account_id, special_price_configuration_id, opts)
      data
    end

    # returns the single special price configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param special_price_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpecialPriceConfiguration, Integer, Hash)>] SpecialPriceConfiguration data, response status code and response headers
    def get_special_price_configuration_with_http_info(korona_account_id, special_price_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpecialPriceConfigurationsApi.get_special_price_configuration ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling SpecialPriceConfigurationsApi.get_special_price_configuration"
      end
      # verify the required parameter 'special_price_configuration_id' is set
      if @api_client.config.client_side_validation && special_price_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'special_price_configuration_id' when calling SpecialPriceConfigurationsApi.get_special_price_configuration"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/specialPriceConfigurations/{specialPriceConfigurationId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'specialPriceConfigurationId' + '}', CGI.escape(special_price_configuration_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SpecialPriceConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"SpecialPriceConfigurationsApi.get_special_price_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpecialPriceConfigurationsApi#get_special_price_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [ResultListSpecialPriceConfiguration]
    def get_special_price_configurations(korona_account_id, opts = {})
      data, _status_code, _headers = get_special_price_configurations_with_http_info(korona_account_id, opts)
      data
    end

    # lists all special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListSpecialPriceConfiguration, Integer, Hash)>] ResultListSpecialPriceConfiguration data, response status code and response headers
    def get_special_price_configurations_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpecialPriceConfigurationsApi.get_special_price_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling SpecialPriceConfigurationsApi.get_special_price_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/specialPriceConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ResultListSpecialPriceConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"SpecialPriceConfigurationsApi.get_special_price_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpecialPriceConfigurationsApi#get_special_price_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns the special prices for the given configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param special_price_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<SpecialPrice>]
    def get_special_prices(korona_account_id, special_price_configuration_id, opts = {})
      data, _status_code, _headers = get_special_prices_with_http_info(korona_account_id, special_price_configuration_id, opts)
      data
    end

    # returns the special prices for the given configuration
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param special_price_configuration_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SpecialPrice>, Integer, Hash)>] Array<SpecialPrice> data, response status code and response headers
    def get_special_prices_with_http_info(korona_account_id, special_price_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpecialPriceConfigurationsApi.get_special_prices ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling SpecialPriceConfigurationsApi.get_special_prices"
      end
      # verify the required parameter 'special_price_configuration_id' is set
      if @api_client.config.client_side_validation && special_price_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'special_price_configuration_id' when calling SpecialPriceConfigurationsApi.get_special_prices"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/specialPriceConfigurations/{specialPriceConfigurationId}/specialPrices'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'specialPriceConfigurationId' + '}', CGI.escape(special_price_configuration_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<SpecialPrice>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"SpecialPriceConfigurationsApi.get_special_prices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpecialPriceConfigurationsApi#get_special_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updates a batch of special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<SpecialPriceConfiguration>] array of existing special price configurations (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def update_special_price_configurations(korona_account_id, body, opts = {})
      data, _status_code, _headers = update_special_price_configurations_with_http_info(korona_account_id, body, opts)
      data
    end

    # updates a batch of special price configurations
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<SpecialPriceConfiguration>] array of existing special price configurations (id or number required)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def update_special_price_configurations_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpecialPriceConfigurationsApi.update_special_price_configurations ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling SpecialPriceConfigurationsApi.update_special_price_configurations"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SpecialPriceConfigurationsApi.update_special_price_configurations"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/specialPriceConfigurations'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"SpecialPriceConfigurationsApi.update_special_price_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpecialPriceConfigurationsApi#update_special_price_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
