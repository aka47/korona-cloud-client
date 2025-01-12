# KoronaCloudClient::SpecialPriceConfigurationsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_special_price_configurations**](SpecialPriceConfigurationsApi.md#add_special_price_configurations) | **POST** /accounts/{koronaAccountId}/specialPriceConfigurations | adds a batch of new special price configurations |
| [**delete_special_price_configurations**](SpecialPriceConfigurationsApi.md#delete_special_price_configurations) | **DELETE** /accounts/{koronaAccountId}/specialPriceConfigurations | deletes a batch of special price configurations |
| [**get_special_price_configuration**](SpecialPriceConfigurationsApi.md#get_special_price_configuration) | **GET** /accounts/{koronaAccountId}/specialPriceConfigurations/{specialPriceConfigurationId} | returns the single special price configuration |
| [**get_special_price_configurations**](SpecialPriceConfigurationsApi.md#get_special_price_configurations) | **GET** /accounts/{koronaAccountId}/specialPriceConfigurations | lists all special price configurations |
| [**get_special_prices**](SpecialPriceConfigurationsApi.md#get_special_prices) | **GET** /accounts/{koronaAccountId}/specialPriceConfigurations/{specialPriceConfigurationId}/specialPrices | returns the special prices for the given configuration |
| [**update_special_price_configurations**](SpecialPriceConfigurationsApi.md#update_special_price_configurations) | **PATCH** /accounts/{koronaAccountId}/specialPriceConfigurations | updates a batch of special price configurations |


## add_special_price_configurations

> <Array<AddOrUpdateResult>> add_special_price_configurations(korona_account_id, body, opts)

adds a batch of new special price configurations

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

api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::SpecialPriceConfiguration.new] # Array<SpecialPriceConfiguration> | array of new special price configurations
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new special price configurations
  result = api_instance.add_special_price_configurations(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->add_special_price_configurations: #{e}"
end
```

#### Using the add_special_price_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_special_price_configurations_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new special price configurations
  data, status_code, headers = api_instance.add_special_price_configurations_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->add_special_price_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;SpecialPriceConfiguration&gt;**](SpecialPriceConfiguration.md) | array of new special price configurations |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_special_price_configurations

> <Array<AddOrUpdateResult>> delete_special_price_configurations(korona_account_id, body)

deletes a batch of special price configurations

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

api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::SpecialPriceConfiguration.new] # Array<SpecialPriceConfiguration> | array of existing special price configurations (id or number required)

begin
  # deletes a batch of special price configurations
  result = api_instance.delete_special_price_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->delete_special_price_configurations: #{e}"
end
```

#### Using the delete_special_price_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_special_price_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of special price configurations
  data, status_code, headers = api_instance.delete_special_price_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->delete_special_price_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;SpecialPriceConfiguration&gt;**](SpecialPriceConfiguration.md) | array of existing special price configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_special_price_configuration

> <SpecialPriceConfiguration> get_special_price_configuration(korona_account_id, special_price_configuration_id)

returns the single special price configuration

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

api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
special_price_configuration_id = 'special_price_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single special price configuration
  result = api_instance.get_special_price_configuration(korona_account_id, special_price_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->get_special_price_configuration: #{e}"
end
```

#### Using the get_special_price_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpecialPriceConfiguration>, Integer, Hash)> get_special_price_configuration_with_http_info(korona_account_id, special_price_configuration_id)

```ruby
begin
  # returns the single special price configuration
  data, status_code, headers = api_instance.get_special_price_configuration_with_http_info(korona_account_id, special_price_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpecialPriceConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->get_special_price_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **special_price_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**SpecialPriceConfiguration**](SpecialPriceConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_special_price_configurations

> <ResultListSpecialPriceConfiguration> get_special_price_configurations(korona_account_id, opts)

lists all special price configurations

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

api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
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
  # lists all special price configurations
  result = api_instance.get_special_price_configurations(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->get_special_price_configurations: #{e}"
end
```

#### Using the get_special_price_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListSpecialPriceConfiguration>, Integer, Hash)> get_special_price_configurations_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all special price configurations
  data, status_code, headers = api_instance.get_special_price_configurations_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListSpecialPriceConfiguration>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->get_special_price_configurations_with_http_info: #{e}"
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

[**ResultListSpecialPriceConfiguration**](ResultListSpecialPriceConfiguration.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_special_prices

> <Array<SpecialPrice>> get_special_prices(korona_account_id, special_price_configuration_id)

returns the special prices for the given configuration

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

api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
special_price_configuration_id = 'special_price_configuration_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the special prices for the given configuration
  result = api_instance.get_special_prices(korona_account_id, special_price_configuration_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->get_special_prices: #{e}"
end
```

#### Using the get_special_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SpecialPrice>>, Integer, Hash)> get_special_prices_with_http_info(korona_account_id, special_price_configuration_id)

```ruby
begin
  # returns the special prices for the given configuration
  data, status_code, headers = api_instance.get_special_prices_with_http_info(korona_account_id, special_price_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SpecialPrice>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->get_special_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **special_price_configuration_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Array&lt;SpecialPrice&gt;**](SpecialPrice.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_special_price_configurations

> <Array<AddOrUpdateResult>> update_special_price_configurations(korona_account_id, body)

updates a batch of special price configurations

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

api_instance = KoronaCloudClient::SpecialPriceConfigurationsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::SpecialPriceConfiguration.new] # Array<SpecialPriceConfiguration> | array of existing special price configurations (id or number required)

begin
  # updates a batch of special price configurations
  result = api_instance.update_special_price_configurations(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->update_special_price_configurations: #{e}"
end
```

#### Using the update_special_price_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_special_price_configurations_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of special price configurations
  data, status_code, headers = api_instance.update_special_price_configurations_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SpecialPriceConfigurationsApi->update_special_price_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;SpecialPriceConfiguration&gt;**](SpecialPriceConfiguration.md) | array of existing special price configurations (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

