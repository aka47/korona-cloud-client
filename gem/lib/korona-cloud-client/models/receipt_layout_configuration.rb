=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.57
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module KoronaCloudClient
  class ReceiptLayoutConfiguration
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    attr_accessor :name

    attr_accessor :show_product_numbers

    attr_accessor :show_receipt_number_barcode

    attr_accessor :footer_logo_number

    attr_accessor :header_logo_number

    attr_accessor :show_recommended_retail_price_threshold

    attr_accessor :item_grouping

    attr_accessor :show_reduced_receipt_information

    attr_accessor :show_reduced_customer_information

    attr_accessor :show_removed_items

    attr_accessor :show_total_discount

    attr_accessor :show_prices_on_delivery_notes

    attr_accessor :show_tax_name

    attr_accessor :deposit_summary

    attr_accessor :show_optional_fiscal_data

    attr_accessor :show_article_count

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'id' => :'id',
        :'number' => :'number',
        :'revision' => :'revision',
        :'name' => :'name',
        :'show_product_numbers' => :'showProductNumbers',
        :'show_receipt_number_barcode' => :'showReceiptNumberBarcode',
        :'footer_logo_number' => :'footerLogoNumber',
        :'header_logo_number' => :'headerLogoNumber',
        :'show_recommended_retail_price_threshold' => :'showRecommendedRetailPriceThreshold',
        :'item_grouping' => :'itemGrouping',
        :'show_reduced_receipt_information' => :'showReducedReceiptInformation',
        :'show_reduced_customer_information' => :'showReducedCustomerInformation',
        :'show_removed_items' => :'showRemovedItems',
        :'show_total_discount' => :'showTotalDiscount',
        :'show_prices_on_delivery_notes' => :'showPricesOnDeliveryNotes',
        :'show_tax_name' => :'showTaxName',
        :'deposit_summary' => :'depositSummary',
        :'show_optional_fiscal_data' => :'showOptionalFiscalData',
        :'show_article_count' => :'showArticleCount'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'id' => :'String',
        :'number' => :'String',
        :'revision' => :'Integer',
        :'name' => :'String',
        :'show_product_numbers' => :'Boolean',
        :'show_receipt_number_barcode' => :'Boolean',
        :'footer_logo_number' => :'Integer',
        :'header_logo_number' => :'Integer',
        :'show_recommended_retail_price_threshold' => :'Integer',
        :'item_grouping' => :'String',
        :'show_reduced_receipt_information' => :'Boolean',
        :'show_reduced_customer_information' => :'Boolean',
        :'show_removed_items' => :'Boolean',
        :'show_total_discount' => :'Boolean',
        :'show_prices_on_delivery_notes' => :'Boolean',
        :'show_tax_name' => :'Boolean',
        :'deposit_summary' => :'Boolean',
        :'show_optional_fiscal_data' => :'Boolean',
        :'show_article_count' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::ReceiptLayoutConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::ReceiptLayoutConfiguration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'revision')
        self.revision = attributes[:'revision']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'show_product_numbers')
        self.show_product_numbers = attributes[:'show_product_numbers']
      end

      if attributes.key?(:'show_receipt_number_barcode')
        self.show_receipt_number_barcode = attributes[:'show_receipt_number_barcode']
      end

      if attributes.key?(:'footer_logo_number')
        self.footer_logo_number = attributes[:'footer_logo_number']
      end

      if attributes.key?(:'header_logo_number')
        self.header_logo_number = attributes[:'header_logo_number']
      end

      if attributes.key?(:'show_recommended_retail_price_threshold')
        self.show_recommended_retail_price_threshold = attributes[:'show_recommended_retail_price_threshold']
      end

      if attributes.key?(:'item_grouping')
        self.item_grouping = attributes[:'item_grouping']
      end

      if attributes.key?(:'show_reduced_receipt_information')
        self.show_reduced_receipt_information = attributes[:'show_reduced_receipt_information']
      end

      if attributes.key?(:'show_reduced_customer_information')
        self.show_reduced_customer_information = attributes[:'show_reduced_customer_information']
      end

      if attributes.key?(:'show_removed_items')
        self.show_removed_items = attributes[:'show_removed_items']
      end

      if attributes.key?(:'show_total_discount')
        self.show_total_discount = attributes[:'show_total_discount']
      end

      if attributes.key?(:'show_prices_on_delivery_notes')
        self.show_prices_on_delivery_notes = attributes[:'show_prices_on_delivery_notes']
      end

      if attributes.key?(:'show_tax_name')
        self.show_tax_name = attributes[:'show_tax_name']
      end

      if attributes.key?(:'deposit_summary')
        self.deposit_summary = attributes[:'deposit_summary']
      end

      if attributes.key?(:'show_optional_fiscal_data')
        self.show_optional_fiscal_data = attributes[:'show_optional_fiscal_data']
      end

      if attributes.key?(:'show_article_count')
        self.show_article_count = attributes[:'show_article_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      item_grouping_validator = EnumAttributeValidator.new('String', ["ASSORTMENT", "COMMODITY_GROUP", "NONE"])
      return false unless item_grouping_validator.valid?(@item_grouping)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_grouping Object to be assigned
    def item_grouping=(item_grouping)
      validator = EnumAttributeValidator.new('String', ["ASSORTMENT", "COMMODITY_GROUP", "NONE"])
      unless validator.valid?(item_grouping)
        fail ArgumentError, "invalid value for \"item_grouping\", must be one of #{validator.allowable_values}."
      end
      @item_grouping = item_grouping
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          id == o.id &&
          number == o.number &&
          revision == o.revision &&
          name == o.name &&
          show_product_numbers == o.show_product_numbers &&
          show_receipt_number_barcode == o.show_receipt_number_barcode &&
          footer_logo_number == o.footer_logo_number &&
          header_logo_number == o.header_logo_number &&
          show_recommended_retail_price_threshold == o.show_recommended_retail_price_threshold &&
          item_grouping == o.item_grouping &&
          show_reduced_receipt_information == o.show_reduced_receipt_information &&
          show_reduced_customer_information == o.show_reduced_customer_information &&
          show_removed_items == o.show_removed_items &&
          show_total_discount == o.show_total_discount &&
          show_prices_on_delivery_notes == o.show_prices_on_delivery_notes &&
          show_tax_name == o.show_tax_name &&
          deposit_summary == o.deposit_summary &&
          show_optional_fiscal_data == o.show_optional_fiscal_data &&
          show_article_count == o.show_article_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, number, revision, name, show_product_numbers, show_receipt_number_barcode, footer_logo_number, header_logo_number, show_recommended_retail_price_threshold, item_grouping, show_reduced_receipt_information, show_reduced_customer_information, show_removed_items, show_total_discount, show_prices_on_delivery_notes, show_tax_name, deposit_summary, show_optional_fiscal_data, show_article_count].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = KoronaCloudClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
