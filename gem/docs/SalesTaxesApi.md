# KoronaCloudClient::SalesTaxesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_sales_taxes**](SalesTaxesApi.md#add_sales_taxes) | **POST** /accounts/{koronaAccountId}/salesTaxes | adds a batch of new sales taxes |
| [**delete_sales_taxes**](SalesTaxesApi.md#delete_sales_taxes) | **DELETE** /accounts/{koronaAccountId}/salesTaxes | deletes a batch of sales taxes |
| [**get_sales_tax**](SalesTaxesApi.md#get_sales_tax) | **GET** /accounts/{koronaAccountId}/salesTaxes/{salesTaxId} | returns the single sales tax |
| [**get_sales_taxes**](SalesTaxesApi.md#get_sales_taxes) | **GET** /accounts/{koronaAccountId}/salesTaxes | lists all sales taxes |
| [**update_sales_taxes**](SalesTaxesApi.md#update_sales_taxes) | **PATCH** /accounts/{koronaAccountId}/salesTaxes | updates a batch of sales taxes |


## add_sales_taxes

> <Array<AddOrUpdateResult>> add_sales_taxes(korona_account_id, body, opts)

adds a batch of new sales taxes

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::SalesTax.new] # Array<SalesTax> | array of new sectors
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new sales taxes
  result = api_instance.add_sales_taxes(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->add_sales_taxes: #{e}"
end
```

#### Using the add_sales_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_sales_taxes_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new sales taxes
  data, status_code, headers = api_instance.add_sales_taxes_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->add_sales_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;SalesTax&gt;**](SalesTax.md) | array of new sectors |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sales_taxes

> <Array<AddOrUpdateResult>> delete_sales_taxes(korona_account_id, body)

deletes a batch of sales taxes

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::SalesTax.new] # Array<SalesTax> | array of existing sales taxes (id or number required)

begin
  # deletes a batch of sales taxes
  result = api_instance.delete_sales_taxes(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->delete_sales_taxes: #{e}"
end
```

#### Using the delete_sales_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_sales_taxes_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of sales taxes
  data, status_code, headers = api_instance.delete_sales_taxes_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->delete_sales_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;SalesTax&gt;**](SalesTax.md) | array of existing sales taxes (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sales_tax

> <SalesTax> get_sales_tax(korona_account_id, sales_tax_id)

returns the single sales tax

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
sales_tax_id = 'sales_tax_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single sales tax
  result = api_instance.get_sales_tax(korona_account_id, sales_tax_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->get_sales_tax: #{e}"
end
```

#### Using the get_sales_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SalesTax>, Integer, Hash)> get_sales_tax_with_http_info(korona_account_id, sales_tax_id)

```ruby
begin
  # returns the single sales tax
  data, status_code, headers = api_instance.get_sales_tax_with_http_info(korona_account_id, sales_tax_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SalesTax>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->get_sales_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **sales_tax_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**SalesTax**](SalesTax.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sales_taxes

> <ResultListSalesTax> get_sales_taxes(korona_account_id, opts)

lists all sales taxes

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
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
  # lists all sales taxes
  result = api_instance.get_sales_taxes(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->get_sales_taxes: #{e}"
end
```

#### Using the get_sales_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListSalesTax>, Integer, Hash)> get_sales_taxes_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all sales taxes
  data, status_code, headers = api_instance.get_sales_taxes_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListSalesTax>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->get_sales_taxes_with_http_info: #{e}"
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

[**ResultListSalesTax**](ResultListSalesTax.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sales_taxes

> <Array<AddOrUpdateResult>> update_sales_taxes(korona_account_id, body)

updates a batch of sales taxes

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

api_instance = KoronaCloudClient::SalesTaxesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::SalesTax.new] # Array<SalesTax> | array of existing sales taxes (id or number required)

begin
  # updates a batch of sales taxes
  result = api_instance.update_sales_taxes(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->update_sales_taxes: #{e}"
end
```

#### Using the update_sales_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_sales_taxes_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of sales taxes
  data, status_code, headers = api_instance.update_sales_taxes_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SalesTaxesApi->update_sales_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;SalesTax&gt;**](SalesTax.md) | array of existing sales taxes (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

