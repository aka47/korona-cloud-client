# KoronaCloudClient::ProductStock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**Amount**](Amount.md) |  | [optional] |
| **average_purchase_price** | **Float** |  | [optional] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **revision** | **Integer** |  | [optional][readonly] |
| **warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductStock.new(
  amount: null,
  average_purchase_price: null,
  product: null,
  revision: null,
  warehouse: null
)
```

