=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::UserRole
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::UserRole do
  let(:instance) { KoronaCloudClient::UserRole.new }

  describe 'test an instance of UserRole' do
    it 'should create an instance of UserRole' do
      expect(instance).to be_instance_of(KoronaCloudClient::UserRole)
    end
  end
  describe 'test attribute "active"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "revision"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["EXPORT", "MANAGE_CONTRACT", "MANAGE_FRANCHISE_RELATIONSHIP", "CREATE_ACCOUNT", "DELETE_ACCOUNT", "EDIT_ACCOUNT", "LIST_ACCOUNT", "CREATE_ADDITIONALRECEIPTINFOTYPE", "DELETE_ADDITIONALRECEIPTINFOTYPE", "EDIT_ADDITIONALRECEIPTINFOTYPE", "LIST_ADDITIONALRECEIPTINFOTYPE", "CREATE_PRODUCT", "EDIT_PRODUCT", "EDIT_PRODUCTNUMBER", "DELETE_PRODUCT", "LIST_PRODUCT", "EDIT_PRODUCT_LISTED", "LIST_PRODUCT_PURCHASE_PRICES", "EDIT_STORE_PRICES", "CREATE_ASSORTMENT", "DELETE_ASSORTMENT", "EDIT_ASSORTMENT", "LIST_ASSORTMENT", "CREATE_CASHIER", "DELETE_CASHIER", "EDIT_CASHIER", "LIST_CASHIER", "CREATE_COMMODITYGROUP", "DELETE_COMMODITYGROUP", "EDIT_COMMODITYGROUP", "LIST_COMMODITYGROUP", "CREATE_COUPONINGACTION", "DELETE_COUPONINGACTION", "EDIT_COUPONINGACTION", "LIST_COUPONINGACTION", "CREATE_CURRENCY", "DELETE_CURRENCY", "EDIT_CURRENCY", "LIST_CURRENCY", "CREATE_CUSTOMERGROUP", "DELETE_CUSTOMERGROUP", "EDIT_CUSTOMERGROUP", "LIST_CUSTOMERGROUP", "CREATE_DATAEXCHANGEENTRY", "DELETE_DATAEXCHANGEENTRY", "EDIT_DATAEXCHANGEENTRY", "LIST_DATAEXCHANGEENTRY", "SHOW_API_DATAEXCHANGEENTRIES", "CREATE_INFOTEXT", "DELETE_INFOTEXT", "EDIT_INFOTEXT", "LIST_INFOTEXT", "CREATE_INVENTORY", "DELETE_INVENTORY", "EDIT_INVENTORY", "LIST_INVENTORY", "CREATE_ITEMSEQUENCE", "DELETE_ITEMSEQUENCE", "EDIT_ITEMSEQUENCE", "LIST_ITEMSEQUENCE", "CREATE_LANGUAGE", "DELETE_LANGUAGE", "EDIT_LANGUAGE", "LIST_LANGUAGE", "EDIT_NUMBERRANGES", "CREATE_PRICEGROUP", "DELETE_PRICEGROUP", "EDIT_PRICEGROUP", "LIST_PRICEGROUP", "CREATE_PRICERULE", "DELETE_PRICERULE", "EDIT_PRICERULE", "LIST_PRICERULE", "CREATE_SECTOR", "DELETE_SECTOR", "EDIT_SECTOR", "LIST_SECTOR", "CREATE_PRODUCER", "DELETE_PRODUCER", "EDIT_PRODUCER", "LIST_PRODUCER", "CREATE_ENTRYGATE", "DELETE_ENTRYGATE", "EDIT_ENTRYGATE", "LIST_ENTRYGATE", "CREATE_EVENT", "DELETE_EVENT", "EDIT_EVENT", "LIST_EVENT", "CREATE_TICKETDESCRIPTION", "DELETE_TICKETDESCRIPTION", "EDIT_TICKETDESCRIPTION", "LIST_TICKETDESCRIPTION", "CREATE_EXTERNAL_TICKET_CONFIGURATION", "DELETE_EXTERNAL_TICKET_CONFIGURATION", "EDIT_EXTERNAL_TICKET_CONFIGURATION", "LIST_EXTERNAL_TICKET_CONFIGURATION", "CREATE_REVENUEDESTINATION", "DELETE_REVENUEDESTINATION", "LIST_REVENUEDESTINATION", "EDIT_REVENUEDESTINATION", "CREATE_POS", "DELETE_POS", "EDIT_POS", "LIST_POS", "CREATE_EXTERNAL_SYSTEM_CALL", "DELETE_EXTERNAL_SYSTEM_CALL", "EDIT_EXTERNAL_SYSTEM_CALL", "LIST_EXTERNAL_SYSTEM_CALL", "CREATE_POSPROFILE", "DELETE_POSPROFILE", "EDIT_POSPROFILE", "LIST_POSPROFILE", "CREATE_BUTTONLAYOUT", "DELETE_BUTTONLAYOUT", "EDIT_BUTTONLAYOUT", "LIST_BUTTONLAYOUT", "CREATE_POSPAGELAYOUTCONFIGURATION", "DELETE_POSPAGELAYOUTCONFIGURATION", "EDIT_POSPAGELAYOUTCONFIGURATION", "LIST_POSPAGELAYOUTCONFIGURATION", "CREATE_ORG", "DELETE_ORG", "EDIT_ORG", "LIST_ORG", "CREATE_PAYMENTMETHOD", "DELETE_PAYMENTMETHOD", "EDIT_PAYMENTMETHOD", "LIST_PAYMENTMETHOD", "CREATE_USER", "DELETE_USER", "EDIT_USER", "LIST_USER", "CREATE_USERROLE", "DELETE_USERROLE", "EDIT_USERROLE", "LIST_USERROLE", "CREATE_CASHIERROLE", "DELETE_CASHIERROLE", "EDIT_CASHIERROLE", "LIST_CASHIERROLE", "CREATE_SALESTAX", "DELETE_SALESTAX", "EDIT_SALESTAX", "LIST_SALESTAX", "CREATE_ECONOMICZONE", "DELETE_ECONOMICZONE", "EDIT_ECONOMICZONE", "LIST_ECONOMICZONE", "CREATE_TABLEOVERVIEW", "DELETE_TABLEOVERVIEW", "LIST_TABLEOVERVIEW", "EDIT_TABLEOVERVIEW", "CREATE_VOUCHERCONFIGURATION", "DELETE_VOUCHERCONFIGURATION", "LIST_VOUCHERCONFIGURATION", "EDIT_VOUCHERCONFIGURATION", "CREATE_VOUCHERTRANSACTION", "DELETE_VOUCHERTRANSACTION", "LIST_VOUCHERTRANSACTION", "EDIT_VOUCHERTRANSACTION", "CREATE_TAG", "DELETE_TAG", "EDIT_TAG", "LIST_TAG", "CREATE_REVENUEACCOUNT", "DELETE_REVENUEACCOUNT", "EDIT_REVENUEACCOUNT", "LIST_REVENUEACCOUNT", "CREATE_COSTCENTER", "DELETE_COSTCENTER", "EDIT_COSTCENTER", "LIST_COSTCENTER", "CREATE_CONTRAACCOUNT", "DELETE_CONTRAACCOUNT", "EDIT_CONTRAACCOUNT", "LIST_CONTRAACCOUNT", "MANAGE_INVENTORY", "VIEW_INVENTORY", "BALANCE_EVALUATION", "RECEIPT_LIST", "BALANCE_LIST", "EDIT_POS_BALANCE", "CORRECT_PURCHASE_PRICE", "CREATE_CUSTOMER", "DELETE_CUSTOMER", "EDIT_CUSTOMER", "LIST_CUSTOMER", "CREATE_SUPPLIER", "DELETE_SUPPLIER", "EDIT_SUPPLIER", "LIST_SUPPLIER", "MANAGE_SENDREPORTTASK", "CREATE_STOCKADJUSTMENT", "DELETE_STOCKADJUSTMENT", "EDIT_STOCKADJUSTMENT", "LIST_STOCKADJUSTMENT", "CREATE_STOCK_RETURN", "DELETE_STOCK_RETURN", "EDIT_STOCK_RETURN", "LIST_STOCK_RETURN", "CREATE_STOCKORDER", "DELETE_STOCKORDER", "EDIT_STOCKORDER", "LIST_STOCKORDER", "CREATE_STOCKORDERTEMPLATE", "DELETE_STOCKORDERTEMPLATE", "EDIT_STOCKORDERTEMPLATE", "LIST_STOCKORDERTEMPLATE", "CREATE_STOREORDER", "DELETE_STOREORDER", "EDIT_STOREORDER", "LIST_STOREORDER", "CREATE_STOREORDERTEMPLATE", "DELETE_STOREORDERTEMPLATE", "EDIT_STOREORDERTEMPLATE", "LIST_STOREORDERTEMPLATE", "CREATE_STOREORDERCOLLECTION", "DELETE_STOREORDERCOLLECTION", "EDIT_STOREORDERCOLLECTION", "LIST_STOREORDERCOLLECTION", "CREATE_DISPATCHNOTIFICATION", "DELETE_DISPATCHNOTIFICATION", "EDIT_DISPATCHNOTIFICATION", "LIST_DISPATCHNOTIFICATION", "CREATE_STOCKRECEIPT", "DELETE_STOCKRECEIPT", "EDIT_STOCKRECEIPT", "LIST_STOCKRECEIPT", "CREATE_TIMETRACKINGENTITY", "DELETE_TIMETRACKINGENTITY", "EDIT_TIMETRACKINGENTITY", "LIST_TIMETRACKINGENTITY", "CREATE_RECEIPTLAYOUTCONFIGURATION", "DELETE_RECEIPTLAYOUTCONFIGURATION", "EDIT_RECEIPTLAYOUTCONFIGURATION", "LIST_RECEIPTLAYOUTCONFIGURATION", "CREATE_ORDERCYCLE", "DELETE_ORDERCYCLE", "EDIT_ORDERCYCLE", "LIST_ORDERCYCLE", "CREATE_PREPAIDCARD", "DELETE_PREPAIDCARD", "EDIT_PREPAIDCARD", "LIST_PREPAIDCARD", "CREATE_CAMPAIGNCARD", "DELETE_CAMPAIGNCARD", "EDIT_CAMPAIGNCARD", "LIST_CAMPAIGNCARD", "CREATE_CUSTOMER_DISPLAY_CONFIGURATION", "DELETE_CUSTOMER_DISPLAY_CONFIGURATION", "EDIT_CUSTOMER_DISPLAY_CONFIGURATION", "LIST_CUSTOMER_DISPLAY_CONFIGURATION", "DASHBOARD_REVENUE_EVALUATIONS", "ORGANIZATIONAL_UNIT_TREND_REPORT", "COMMODITYGROUP_STATISTIC", "HOURREVENUE_STATISTIC", "DAYREVENUE_STATISTIC", "HOURRECEIPTAMOUNT_STATISTIC", "DAYOFWEEKCUSTOMER_STATISTIC", "HOURCUSTOMER_STATISTIC", "POS_STATISTIC", "CASHIER_STATISTIC", "PAYMENT_METHOD_STATISTIC", "TOPSELLER_STATISTIC", "MOSTPOPULAR_STATISTIC", "PRODUCT_PERFORMANCE_STATISTIC", "WAREHOUSE_STATISTIC", "WAREHOUSE_REPORT", "CUSTOMERGROUP_STATISTIC", "CUSTOMER_STATISTIC", "STOCK_HISTORY_STATISTIC", "STOCK_RETURN_RATE", "STOCK_RETURN_REPORT", "ADDITIONAL_RECEIPT_INFO_REPORT", "PRODUCT_REPORT", "BONJOURNAL_REPORT", "POSTING_JOURNAL_REPORT", "DETACHEDPRODUCT_REPORT", "CASHIER_REPORT", "CASHIER_REVENUE_REPORT", "SELLER_REVENUE_REPORT", "CASHIERBALANCEDEVIATION_REPORT", "POS_REPORT", "ORGANIZATIONALUNIT_REPORT", "TAG_REPORT", "CASHIER_COMISSION_REPORT", "ORG_COMISSION_REPORT", "TAX_REPORT", "SECTOR_REPORT", "SERIAL_NUMBER_REPORT", "STOCKVALUE_REPORT", "TIMETRACKING_REPORT", "PRODUCT_CUSTOMER_REPORT", "SLOW_SELLER_REPORT", "TOP_SELLER_REPORT", "DISCOUNT_REASONS_REPORT", "DISCOUNT_REPORT", "COMMODITYGROUP_REPORT", "ACCOUNT_TRANSACTIONS", "CUSTOMERGROUP_REPORT", "PAYMENT_METHOD_REPORT", "REVENUE_DESTINATION_REPORT", "CUSTOMER_ABC_REPORT", "CUSTOMER_SALES", "CUSTOMER_PRODUCT_REPORT", "PREPAID_CARDS_REPORT", "PREPAID_TRANSACTIONS_REPORT", "SUPPLIER_PRODUCTS_REPORT", "PRODUCTS_PER_WEEKDAY_REPORT", "KEY_PERFORMANCE_REPORT", "MANAGEMENT_REPORT", "MOVEMENT_REPORT", "ABCANALYSIS_REPORT", "SUPPLIER_ANALYSIS_REPORT", "SLOW_SELLER_RATIO_REPORT", "TOP_SELLER_RATIO_REPORT", "ORGANIZATIONALUNIT_TWOPOINTZERO_REPORT", "ORGANIZATIONALUNIT_COMPARISON_REPORT", "HIERARCHICALCOMMODITYGROUP_REPORT", "SUPPLIER_STOCKRECEIPT_REPORT", "INTERNAL_TRANSFER_REPORT", "SUPPLIER_SALES_REPORT", "SHELF_LIFE_SIMPLE_REPORT", "COMPARISON_REPORT", "SALES_PRICE_REPORT", "PRODUCTION_REPORT", "CAMPAIGN_CARD_REPORT", "POSBALANCESUMMARY_REPORT", "DELIVERYNOTESUMMARY_REPORT", "DIFFERENCE_CHECK_REPORT", "STOCK_RECEIPT_DISCREPANCY_REPORT", "DAYRATING_REPORT", "VOID_REPORT", "CREDIT_CARD_CONSOLIDATION_REPORT", "PAYMENT_REPORT", "SERVICE_PROVISION_REVENUE_REPORT", "SERVICE_PROVISION_DISTINCTION_REPORT", "VOUCHER_REPORT", "CREATE_IMAGE", "DELETE_IMAGE", "LIST_IMAGE", "CREATE_REPORT_FILE", "EDIT_REPORT_FILE", "DELETE_REPORT_FILE", "LIST_REPORT_FILE", "MANAGE_STATIONERY", "CREATE_QUOTE", "DELETE_QUOTE", "EDIT_QUOTE", "LIST_QUOTE", "CREATE_RENTAL", "DELETE_RENTAL", "EDIT_RENTAL", "LIST_RENTAL", "CREATE_INVOICE", "DELETE_INVOICE", "EDIT_INVOICE", "LIST_INVOICE", "CREATE_DELIVERY_NOTE", "DELETE_DELIVERY_NOTE", "EDIT_DELIVERY_NOTE", "LIST_DELIVERY_NOTE", "CREATE_CUSTOMER_ORDER", "DELETE_CUSTOMER_ORDER", "EDIT_CUSTOMER_ORDER", "LIST_CUSTOMER_ORDER", "CREATE_CUSTOMER_ORDER_TEMPLATE", "DELETE_CUSTOMER_ORDER_TEMPLATE", "EDIT_CUSTOMER_ORDER_TEMPLATE", "LIST_CUSTOMER_ORDER_TEMPLATE", "CREATE_CASH_JOURNAL", "DELETE_CASH_JOURNAL", "EDIT_CASH_JOURNAL", "LIST_CASH_JOURNAL", "INSTANT_ORDER_PORTAL", "INSTANT_ORDER", "ENTRY_REPORT", "LIST_TICKETS", "EDIT_TICKETS", "CREATE_MESSAGE", "DELETE_MESSAGE", "EDIT_MESSAGE", "LIST_MESSAGE", "LIST_WAREHOUSE", "SHOW_INVENTORY_EXPENSES", "SHOW_INVENTORY_VALUE", "ALLOW_KORONA_INTEGRATION_LOGIN", "EDIT_DISCOUNT_LEVEL_CONFIGURATION"])
      # validator.allowable_values.each do |value|
      #   expect { instance.permissions = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "number_length"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
