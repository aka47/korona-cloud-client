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

# Unit tests for KoronaCloudClient::TerminalReceiptPrintLine
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::TerminalReceiptPrintLine do
  let(:instance) { KoronaCloudClient::TerminalReceiptPrintLine.new }

  describe 'test an instance of TerminalReceiptPrintLine' do
    it 'should create an instance of TerminalReceiptPrintLine' do
      expect(instance).to be_instance_of(KoronaCloudClient::TerminalReceiptPrintLine)
    end
  end
  describe 'test attribute "terminal_receipt_print_line_font"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NORMAL", "BOLD"])
      # validator.allowable_values.each do |value|
      #   expect { instance.terminal_receipt_print_line_font = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "text"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
