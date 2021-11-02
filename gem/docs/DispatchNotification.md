# KoronaCloudClient::DispatchNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **delivery_date** | **Date** |  | [optional] |
| **shipping_date** | **Date** |  | [optional] |
| **point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **create_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **booking_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **booking_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **booking_api_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **create_user** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **customer** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **items_count** | **Integer** |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **party_information** | [**ProductTransferInvolvedPartyInformation**](ProductTransferInvolvedPartyInformation.md) |  | [optional] |
| **product_stock_order** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **source_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **supplier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **comment** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DispatchNotification.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  delivery_date: null,
  shipping_date: null,
  point_of_sale: null,
  create_time: 2018-11-22T09:40:21+01:00,
  booking_time: 2018-11-22T09:40:21+01:00,
  booking_user: null,
  booking_api_user: null,
  cashier: null,
  create_user: null,
  customer: null,
  description: null,
  items_count: null,
  organizational_unit: null,
  party_information: null,
  product_stock_order: null,
  source_organizational_unit: null,
  supplier: null,
  comment: null
)
```
