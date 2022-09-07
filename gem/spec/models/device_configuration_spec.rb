=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.19.20
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::DeviceConfiguration
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::DeviceConfiguration do
  let(:instance) { KoronaCloudClient::DeviceConfiguration.new }

  describe 'test an instance of DeviceConfiguration' do
    it 'should create an instance of DeviceConfiguration' do
      expect(instance).to be_instance_of(KoronaCloudClient::DeviceConfiguration)
    end
  end
  describe 'test attribute "port"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SYSTEMPRINTER_DEFAULT", "COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "USB_COM1", "USB_COM2", "USB_COM3", "USB_COM4", "USB_COM5", "USB_COM6", "USB_COM7", "LPT1", "LPT2", "LPT3", "USB_LPT1", "USB_LPT2", "NETWORK", "COMMAND", "CASHDRAWER_DEAMON_WINDOWS", "CASHDRAWER_DEAMON_LINUX", "USB_ACM1", "USB_ACM2", "USB_ACM3", "USB_ACM4", "USB_ACM5", "USB_ACM6", "USB_ACM7"])
      # validator.allowable_values.each do |value|
      #   expect { instance.port = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "device"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ESC_PRINTER", "WINCOR_PRINTER", "EPSON_PRINTER", "TEXT_PRINTER", "DEFAULT_BARCODE_READER", "DSP800_DISPLAY", "ESC_CUSTOMER_DISPLAY", "CD7220_DISPLAY", "WINCOR_KEY_LOCK", "JB1300_KEY_LOCK", "ADDIMAT_KEY_LOCK", "ESC_DRAWER", "BOCA_PRINTER", "ZEBRA_PRINTER", "EPSON_TM_L90_PRINTER", "DEFAULT_ZVT_CREDIT_AUTHORIZATION_TERMINAL", "SOVATO_CUSTOMER_DISPLAY", "KORONA_CASH_DRAWER", "DEFAULT_PAX_CREDIT_AUTHORIZATION_TERMINAL", "ZEBRA_LP_2824_PRINTER", "HP_PRINTER", "ZEBRA_TTP_2000_PRINTER", "DEFAULT_SIX_CREDIT_AUTHORIZATION_TERMINAL", "SCANPAL2_BARCODE_SCANNER", "MAXIM_INTEGRATED_KEY_LOCK", "TOSHIBA_KEY_LOCK", "DEFAULT_VERIFONE_POINT_CREDIT_AUTHORIZATION_TERMINAL", "BA63_CUSTOMER_DISPLAY", "DEFAULT_PAYWORKS_CREDIT_AUTHORIZATION_TERMINAL", "DEFAULT_GENIUS_CREDIT_AUTHORIZATION_TERMINAL", "TOSHIBA_DISPLAY", "JARLTECH_CUSTOMER_DISPLAY", "DEFAULT_ECONDUIT_CREDIT_AUTHORIZATION_TERMINAL", "ADYEN_CREDIT_AUTHORIZATION_TERMINAL", "DEJAVOO_CREDIT_AUTHORIZATION_TERMINAL", "AURES_PRINTER"])
      # validator.allowable_values.each do |value|
      #   expect { instance.device = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "baud_rate"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["LINUX_9600", "LINUX_19200", "WIN_9600", "WIN_19200", "NONE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.baud_rate = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "init_command"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "init_command_variable"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "port_parameter"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "port_parameter_variable"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default_device"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "device_parameters"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "production_type_settings"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
