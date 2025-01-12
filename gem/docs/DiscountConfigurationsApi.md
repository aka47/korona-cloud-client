# KoronaCloudClient::DiscountConfigurationsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_discount_configurations**](DiscountConfigurationsApi.md#add_discount_configurations) | **POST** /accounts/{koronaAccountId}/discountconfigurations | adds a batch of new discount configurations |
| [**delete_discount_configuration**](DiscountConfigurationsApi.md#delete_discount_configuration) | **DELETE** /accounts/{koronaAccountId}/discountconfigurations/{discountConfigurationId} | deletes the single discount configuration |
| [**delete_discount_configurations**](DiscountConfigurationsApi.md#delete_discount_configurations) | **DELETE** /accounts/{koronaAccountId}/discountconfigurations | deletes a batch of discountConfigurations |
| [**get_discount_configuration**](DiscountConfigurationsApi.md#get_discount_configuration) | **GET** /accounts/{koronaAccountId}/discountconfigurations/{discountConfigurationId} | returns the single discount configuration |
| [**get_discount_configurations**](DiscountConfigurationsApi.md#get_discount_configurations) | **GET** /accounts/{koronaAccountId}/discountconfigurations | lists all discountConfigurations |
| [**update_discount_configuration**](DiscountConfigurationsApi.md#update_discount_configuration) | **PATCH** /accounts/{koronaAccountId}/discountconfigurations/{discountConfigurationId} | updates the single discount configuration |
| [**update_discount_configurations**](DiscountConfigurationsApi.md#update_discount_configurations) | **PATCH** /accounts/{koronaAccountId}/discountconfigurations | updates a batch of discountConfigurations |


## add_discount_configurations

> <Array<AddOrUpdateResult>> add_discount_configurations(korona_account_id, body, opts)

adds a batch of new discount configurations

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DiscountConfiguration.new] # Array<DiscountConfiguration> | array of new discount configurations
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new discount configurations
  result = api_instance.add_discount_configurations(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->add_discount_configurations: #{e}"
end
```

#### Using the add_discount_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_discount_configurations_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new discount configurations
  data, status_code, headers = api_instance.add_discount_configurations_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->add_discount_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DiscountConfiguration&gt;**](DiscountConfiguration.md) | array of new discount configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_discount_configuration

> delete_discount_configuration(korona_account_id, discount_configuration_id)

deletes the single discount configuration

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single discount configuration
  api_instance.delete_discount_configuration(korona_account_id, discount_configuration_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configuration: #{e}"
end
```

#### Using the delete_discount_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_discount_configuration_with_http_info(korona_account_id, discount_configuration_id)

```ruby
begin
  # deletes the single discount configuration
  data, status_code, headers = api_instance.delete_discount_configuration_with_http_info(korona_account_id, discount_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discount_configurations

> <Array<AddOrUpdateResult>> delete_discount_configurations(korona_account_id, body)

deletes a batch of discountConfigurations

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DiscountConfiguration.new] # Array<DiscountConfiguration> | array of existing discount configurations (id or number required)

begin
  # deletes a batch of discountConfigurations
  result = api_instance.delete_discount_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configurations: #{e}"
end
```

#### Using the delete_discount_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_discount_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of discountConfigurations
  data, status_code, headers = api_instance.delete_discount_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->delete_discount_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DiscountConfiguration&gt;**](DiscountConfiguration.md) | array of existing discount configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_discount_configuration

> <DiscountConfiguration> get_discount_configuration(korona_account_id, discount_configuration_id)

returns the single discount configuration

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single discount configuration
  result = api_instance.get_discount_configuration(korona_account_id, discount_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration: #{e}"
end
```

#### Using the get_discount_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountConfiguration>, Integer, Hash)> get_discount_configuration_with_http_info(korona_account_id, discount_configuration_id)

```ruby
begin
  # returns the single discount configuration
  data, status_code, headers = api_instance.get_discount_configuration_with_http_info(korona_account_id, discount_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**DiscountConfiguration**](DiscountConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discount_configurations

> <ResultListDiscountConfiguration> get_discount_configurations(korona_account_id, opts)

lists all discountConfigurations

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all discountConfigurations
  result = api_instance.get_discount_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configurations: #{e}"
end
```

#### Using the get_discount_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDiscountConfiguration>, Integer, Hash)> get_discount_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all discountConfigurations
  data, status_code, headers = api_instance.get_discount_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDiscountConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->get_discount_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListDiscountConfiguration**](ResultListDiscountConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_discount_configuration

> update_discount_configuration(korona_account_id, discount_configuration_id, body)

updates the single discount configuration

if [number] is set, the number of the object will change and the resource location as well

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
discount_configuration_id = 'discount_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::DiscountConfiguration.new # DiscountConfiguration | the properties to update of the discount configuration

begin
  # updates the single discount configuration
  api_instance.update_discount_configuration(korona_account_id, discount_configuration_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration: #{e}"
end
```

#### Using the update_discount_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_discount_configuration_with_http_info(korona_account_id, discount_configuration_id, body)

```ruby
begin
  # updates the single discount configuration
  data, status_code, headers = api_instance.update_discount_configuration_with_http_info(korona_account_id, discount_configuration_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **discount_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**DiscountConfiguration**](DiscountConfiguration.md) | the properties to update of the discount configuration |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discount_configurations

> <Array<AddOrUpdateResult>> update_discount_configurations(korona_account_id, body)

updates a batch of discountConfigurations

[number] must be set in the objects, otherwise the object cannot be updated

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::DiscountConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DiscountConfiguration.new] # Array<DiscountConfiguration> | an array of existing discountConfigurations

begin
  # updates a batch of discountConfigurations
  result = api_instance.update_discount_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configurations: #{e}"
end
```

#### Using the update_discount_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_discount_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of discountConfigurations
  data, status_code, headers = api_instance.update_discount_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DiscountConfigurationsApi->update_discount_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DiscountConfiguration&gt;**](DiscountConfiguration.md) | an array of existing discountConfigurations |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

