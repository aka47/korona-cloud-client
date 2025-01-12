# KoronaCloudClient::InventoriesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_inventories**](InventoriesApi.md#add_inventories) | **POST** /accounts/{koronaAccountId}/inventories | adds a batch of new inventories |
| [**add_inventory_list_items**](InventoriesApi.md#add_inventory_list_items) | **POST** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items | adds inventory list items |
| [**book_inventory_list**](InventoriesApi.md#book_inventory_list) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/book | book the single inventory list |
| [**delete_inventory**](InventoriesApi.md#delete_inventory) | **DELETE** /accounts/{koronaAccountId}/inventories/{inventoryId} | deletes the single inventory (only allowed if hasBookedReceipts&#x3D;false) |
| [**delete_inventory_list_item**](InventoriesApi.md#delete_inventory_list_item) | **DELETE** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items/{productId} | deletes the single inventory list item |
| [**get_inventories**](InventoriesApi.md#get_inventories) | **GET** /accounts/{koronaAccountId}/inventories | lists all inventories |
| [**get_inventory**](InventoriesApi.md#get_inventory) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId} | returns the single inventory |
| [**get_inventory_list**](InventoriesApi.md#get_inventory_list) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId} | returns the single inventory list |
| [**get_inventory_list_item**](InventoriesApi.md#get_inventory_list_item) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items/{productId} | returns the single inventory list item |
| [**get_inventory_list_items**](InventoriesApi.md#get_inventory_list_items) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items | lists all inventory list items |
| [**get_inventory_lists**](InventoriesApi.md#get_inventory_lists) | **GET** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists | lists all inventory lists |
| [**update_inventory**](InventoriesApi.md#update_inventory) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId} | updates the single inventory |
| [**update_inventory_list**](InventoriesApi.md#update_inventory_list) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId} | updates the single inventory list |
| [**update_inventory_list_item**](InventoriesApi.md#update_inventory_list_item) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items/{productId} | updates the single inventory list item |
| [**update_inventory_list_items**](InventoriesApi.md#update_inventory_list_items) | **PATCH** /accounts/{koronaAccountId}/inventories/{inventoryId}/inventoryLists/{inventoryListId}/items | updates inventory list items (property [product] required)) |


## add_inventories

> <Array<AddOrUpdateResult>> add_inventories(korona_account_id, body)

adds a batch of new inventories

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::Inventory.new] # Array<Inventory> | an array of new inventories

begin
  # adds a batch of new inventories
  result = api_instance.add_inventories(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->add_inventories: #{e}"
end
```

#### Using the add_inventories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_inventories_with_http_info(korona_account_id, body)

```ruby
begin
  # adds a batch of new inventories
  data, status_code, headers = api_instance.add_inventories_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->add_inventories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;Inventory&gt;**](Inventory.md) | an array of new inventories |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_inventory_list_items

> <Array<AddOrUpdateResult>> add_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)

adds inventory list items

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::InventoryListItem.new] # Array<InventoryListItem> | data to update

begin
  # adds inventory list items
  result = api_instance.add_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->add_inventory_list_items: #{e}"
end
```

#### Using the add_inventory_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_inventory_list_items_with_http_info(korona_account_id, inventory_id, inventory_list_id, body)

```ruby
begin
  # adds inventory list items
  data, status_code, headers = api_instance.add_inventory_list_items_with_http_info(korona_account_id, inventory_id, inventory_list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->add_inventory_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;InventoryListItem&gt;**](InventoryListItem.md) | data to update |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## book_inventory_list

> book_inventory_list(korona_account_id, inventory_id, inventory_list_id)

book the single inventory list

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # book the single inventory list
  api_instance.book_inventory_list(korona_account_id, inventory_id, inventory_list_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->book_inventory_list: #{e}"
end
```

#### Using the book_inventory_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_inventory_list_with_http_info(korona_account_id, inventory_id, inventory_list_id)

```ruby
begin
  # book the single inventory list
  data, status_code, headers = api_instance.book_inventory_list_with_http_info(korona_account_id, inventory_id, inventory_list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->book_inventory_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_inventory

> delete_inventory(korona_account_id, inventory_id)

deletes the single inventory (only allowed if hasBookedReceipts=false)

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single inventory (only allowed if hasBookedReceipts=false)
  api_instance.delete_inventory(korona_account_id, inventory_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->delete_inventory: #{e}"
end
```

#### Using the delete_inventory_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_inventory_with_http_info(korona_account_id, inventory_id)

```ruby
begin
  # deletes the single inventory (only allowed if hasBookedReceipts=false)
  data, status_code, headers = api_instance.delete_inventory_with_http_info(korona_account_id, inventory_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->delete_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_inventory_list_item

> delete_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)

deletes the single inventory list item

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single inventory list item
  api_instance.delete_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->delete_inventory_list_item: #{e}"
end
```

#### Using the delete_inventory_list_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_inventory_list_item_with_http_info(korona_account_id, inventory_id, inventory_list_id, product_id)

```ruby
begin
  # deletes the single inventory list item
  data, status_code, headers = api_instance.delete_inventory_list_item_with_http_info(korona_account_id, inventory_id, inventory_list_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->delete_inventory_list_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventories

> <ResultListInventory> get_inventories(korona_account_id, opts)

lists all inventories

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

api_instance = KoronaCloudClient::InventoriesApi.new
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
  # lists all inventories
  result = api_instance.get_inventories(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventories: #{e}"
end
```

#### Using the get_inventories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListInventory>, Integer, Hash)> get_inventories_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all inventories
  data, status_code, headers = api_instance.get_inventories_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListInventory>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventories_with_http_info: #{e}"
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

[**ResultListInventory**](ResultListInventory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory

> <Inventory> get_inventory(korona_account_id, inventory_id)

returns the single inventory

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single inventory
  result = api_instance.get_inventory(korona_account_id, inventory_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory: #{e}"
end
```

#### Using the get_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Inventory>, Integer, Hash)> get_inventory_with_http_info(korona_account_id, inventory_id)

```ruby
begin
  # returns the single inventory
  data, status_code, headers = api_instance.get_inventory_with_http_info(korona_account_id, inventory_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Inventory>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Inventory**](Inventory.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_list

> <InventoryList> get_inventory_list(korona_account_id, inventory_id, inventory_list_id)

returns the single inventory list

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single inventory list
  result = api_instance.get_inventory_list(korona_account_id, inventory_id, inventory_list_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_list: #{e}"
end
```

#### Using the get_inventory_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InventoryList>, Integer, Hash)> get_inventory_list_with_http_info(korona_account_id, inventory_id, inventory_list_id)

```ruby
begin
  # returns the single inventory list
  data, status_code, headers = api_instance.get_inventory_list_with_http_info(korona_account_id, inventory_id, inventory_list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InventoryList>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**InventoryList**](InventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_list_item

> <InventoryListItem> get_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)

returns the single inventory list item

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single inventory list item
  result = api_instance.get_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_list_item: #{e}"
end
```

#### Using the get_inventory_list_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InventoryListItem>, Integer, Hash)> get_inventory_list_item_with_http_info(korona_account_id, inventory_id, inventory_list_id, product_id)

```ruby
begin
  # returns the single inventory list item
  data, status_code, headers = api_instance.get_inventory_list_item_with_http_info(korona_account_id, inventory_id, inventory_list_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InventoryListItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_list_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**InventoryListItem**](InventoryListItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_list_items

> <ResultListInventoryListItem> get_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, opts)

lists all inventory list items

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789 # Integer | last revision number, objects with a greater revision than this will be returned
}

begin
  # lists all inventory list items
  result = api_instance.get_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_list_items: #{e}"
end
```

#### Using the get_inventory_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListInventoryListItem>, Integer, Hash)> get_inventory_list_items_with_http_info(korona_account_id, inventory_id, inventory_list_id, opts)

```ruby
begin
  # lists all inventory list items
  data, status_code, headers = api_instance.get_inventory_list_items_with_http_info(korona_account_id, inventory_id, inventory_list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListInventoryListItem>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |

### Return type

[**ResultListInventoryListItem**](ResultListInventoryListItem.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inventory_lists

> <ResultListInventoryList> get_inventory_lists(korona_account_id, inventory_id, opts)

lists all inventory lists

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  min_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_create_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  min_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  max_booking_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
  booking_status: 'BOOKED', # String | booking status (possible values: BOOKED, IN_PROGRESS)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all inventory lists
  result = api_instance.get_inventory_lists(korona_account_id, inventory_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_lists: #{e}"
end
```

#### Using the get_inventory_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListInventoryList>, Integer, Hash)> get_inventory_lists_with_http_info(korona_account_id, inventory_id, opts)

```ruby
begin
  # lists all inventory lists
  data, status_code, headers = api_instance.get_inventory_lists_with_http_info(korona_account_id, inventory_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListInventoryList>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->get_inventory_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **min_booking_time** | **Time** | min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **max_booking_time** | **Time** | max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) | [optional] |
| **booking_status** | **String** | booking status (possible values: BOOKED, IN_PROGRESS) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListInventoryList**](ResultListInventoryList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_inventory

> update_inventory(korona_account_id, inventory_id, body)

updates the single inventory

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::Inventory.new # Inventory | the properties to update of the inventory

begin
  # updates the single inventory
  api_instance.update_inventory(korona_account_id, inventory_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory: #{e}"
end
```

#### Using the update_inventory_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_inventory_with_http_info(korona_account_id, inventory_id, body)

```ruby
begin
  # updates the single inventory
  data, status_code, headers = api_instance.update_inventory_with_http_info(korona_account_id, inventory_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Inventory**](Inventory.md) | the properties to update of the inventory |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inventory_list

> update_inventory_list(korona_account_id, inventory_id, inventory_list_id, body)

updates the single inventory list

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::InventoryList.new # InventoryList | data to update

begin
  # updates the single inventory list
  api_instance.update_inventory_list(korona_account_id, inventory_id, inventory_list_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_list: #{e}"
end
```

#### Using the update_inventory_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_inventory_list_with_http_info(korona_account_id, inventory_id, inventory_list_id, body)

```ruby
begin
  # updates the single inventory list
  data, status_code, headers = api_instance.update_inventory_list_with_http_info(korona_account_id, inventory_id, inventory_list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**InventoryList**](InventoryList.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inventory_list_item

> update_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id, body)

updates the single inventory list item

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
product_id = 'product_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::InventoryListItem.new # InventoryListItem | data to update

begin
  # updates the single inventory list item
  api_instance.update_inventory_list_item(korona_account_id, inventory_id, inventory_list_id, product_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_list_item: #{e}"
end
```

#### Using the update_inventory_list_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_inventory_list_item_with_http_info(korona_account_id, inventory_id, inventory_list_id, product_id, body)

```ruby
begin
  # updates the single inventory list item
  data, status_code, headers = api_instance.update_inventory_list_item_with_http_info(korona_account_id, inventory_id, inventory_list_id, product_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_list_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **product_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**InventoryListItem**](InventoryListItem.md) | data to update |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inventory_list_items

> <Array<AddOrUpdateResult>> update_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)

updates inventory list items (property [product] required))

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

api_instance = KoronaCloudClient::InventoriesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
inventory_id = 'inventory_id_example' # String | id of the related object (important: id should match the uuid-format)
inventory_list_id = 'inventory_list_id_example' # String | id of the related object (important: id should match the uuid-format)
body = [KoronaCloudClient::InventoryListItem.new] # Array<InventoryListItem> | an array of inventory list items to update

begin
  # updates inventory list items (property [product] required))
  result = api_instance.update_inventory_list_items(korona_account_id, inventory_id, inventory_list_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_list_items: #{e}"
end
```

#### Using the update_inventory_list_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_inventory_list_items_with_http_info(korona_account_id, inventory_id, inventory_list_id, body)

```ruby
begin
  # updates inventory list items (property [product] required))
  data, status_code, headers = api_instance.update_inventory_list_items_with_http_info(korona_account_id, inventory_id, inventory_list_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling InventoriesApi->update_inventory_list_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **inventory_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **inventory_list_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**Array&lt;InventoryListItem&gt;**](InventoryListItem.md) | an array of inventory list items to update |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

