# KoronaCloudClient::DeviceConfigurationVariablesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_device_configuration_variables**](DeviceConfigurationVariablesApi.md#add_device_configuration_variables) | **POST** /accounts/{koronaAccountId}/deviceConfigurationVariables | adds a batch of new device configuration variables |
| [**delete_device_configuration_variable**](DeviceConfigurationVariablesApi.md#delete_device_configuration_variable) | **DELETE** /accounts/{koronaAccountId}/deviceConfigurationVariables/{deviceConfigurationVariableId} | deletes the single device configuration variable |
| [**delete_device_configuration_variables**](DeviceConfigurationVariablesApi.md#delete_device_configuration_variables) | **DELETE** /accounts/{koronaAccountId}/deviceConfigurationVariables | deletes a batch of device configuration variables |
| [**get_device_configuration_variable**](DeviceConfigurationVariablesApi.md#get_device_configuration_variable) | **GET** /accounts/{koronaAccountId}/deviceConfigurationVariables/{deviceConfigurationVariableId} | returns the single device configuration variable |
| [**get_device_configuration_variables**](DeviceConfigurationVariablesApi.md#get_device_configuration_variables) | **GET** /accounts/{koronaAccountId}/deviceConfigurationVariables | lists all device configuration variables |
| [**update_device_configuration_variables**](DeviceConfigurationVariablesApi.md#update_device_configuration_variables) | **PATCH** /accounts/{koronaAccountId}/deviceConfigurationVariables | updates a batch of device configuration variables |


## add_device_configuration_variables

> <Array<AddOrUpdateResult>> add_device_configuration_variables(korona_account_id, body, opts)

adds a batch of new device configuration variables

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

api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DeviceConfigurationVariable.new] # Array<DeviceConfigurationVariable> | array of new device configuration variables
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new device configuration variables
  result = api_instance.add_device_configuration_variables(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->add_device_configuration_variables: #{e}"
end
```

#### Using the add_device_configuration_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_device_configuration_variables_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new device configuration variables
  data, status_code, headers = api_instance.add_device_configuration_variables_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->add_device_configuration_variables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DeviceConfigurationVariable&gt;**](DeviceConfigurationVariable.md) | array of new device configuration variables |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_device_configuration_variable

> delete_device_configuration_variable(korona_account_id, device_configuration_variable_id)

deletes the single device configuration variable

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

api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
device_configuration_variable_id = 'device_configuration_variable_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single device configuration variable
  api_instance.delete_device_configuration_variable(korona_account_id, device_configuration_variable_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->delete_device_configuration_variable: #{e}"
end
```

#### Using the delete_device_configuration_variable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_device_configuration_variable_with_http_info(korona_account_id, device_configuration_variable_id)

```ruby
begin
  # deletes the single device configuration variable
  data, status_code, headers = api_instance.delete_device_configuration_variable_with_http_info(korona_account_id, device_configuration_variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->delete_device_configuration_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **device_configuration_variable_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_device_configuration_variables

> <Array<AddOrUpdateResult>> delete_device_configuration_variables(korona_account_id, body)

deletes a batch of device configuration variables

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

api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DeviceConfigurationVariable.new] # Array<DeviceConfigurationVariable> | array of existing device configuration variables (id or number required)

begin
  # deletes a batch of device configuration variables
  result = api_instance.delete_device_configuration_variables(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->delete_device_configuration_variables: #{e}"
end
```

#### Using the delete_device_configuration_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_device_configuration_variables_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of device configuration variables
  data, status_code, headers = api_instance.delete_device_configuration_variables_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->delete_device_configuration_variables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DeviceConfigurationVariable&gt;**](DeviceConfigurationVariable.md) | array of existing device configuration variables (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_device_configuration_variable

> <DeviceConfigurationVariable> get_device_configuration_variable(korona_account_id, device_configuration_variable_id)

returns the single device configuration variable

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

api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
device_configuration_variable_id = 'device_configuration_variable_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single device configuration variable
  result = api_instance.get_device_configuration_variable(korona_account_id, device_configuration_variable_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->get_device_configuration_variable: #{e}"
end
```

#### Using the get_device_configuration_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceConfigurationVariable>, Integer, Hash)> get_device_configuration_variable_with_http_info(korona_account_id, device_configuration_variable_id)

```ruby
begin
  # returns the single device configuration variable
  data, status_code, headers = api_instance.get_device_configuration_variable_with_http_info(korona_account_id, device_configuration_variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceConfigurationVariable>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->get_device_configuration_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **device_configuration_variable_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**DeviceConfigurationVariable**](DeviceConfigurationVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device_configuration_variables

> <ResultListDeviceConfigurationVariable> get_device_configuration_variables(korona_account_id, opts)

lists all device configuration variables

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

api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
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
  # lists all device configuration variables
  result = api_instance.get_device_configuration_variables(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->get_device_configuration_variables: #{e}"
end
```

#### Using the get_device_configuration_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListDeviceConfigurationVariable>, Integer, Hash)> get_device_configuration_variables_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all device configuration variables
  data, status_code, headers = api_instance.get_device_configuration_variables_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListDeviceConfigurationVariable>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->get_device_configuration_variables_with_http_info: #{e}"
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

[**ResultListDeviceConfigurationVariable**](ResultListDeviceConfigurationVariable.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_device_configuration_variables

> <Array<AddOrUpdateResult>> update_device_configuration_variables(korona_account_id, body)

updates a batch of device configuration variables

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

api_instance = KoronaCloudClient::DeviceConfigurationVariablesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::DeviceConfigurationVariable.new] # Array<DeviceConfigurationVariable> | array of existing device configuration variables (id or number required)

begin
  # updates a batch of device configuration variables
  result = api_instance.update_device_configuration_variables(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->update_device_configuration_variables: #{e}"
end
```

#### Using the update_device_configuration_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_device_configuration_variables_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of device configuration variables
  data, status_code, headers = api_instance.update_device_configuration_variables_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling DeviceConfigurationVariablesApi->update_device_configuration_variables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;DeviceConfigurationVariable&gt;**](DeviceConfigurationVariable.md) | array of existing device configuration variables (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

