=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.19.20
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module KoronaCloudClient
  class CustomerOrderItem
    attr_accessor :attendance

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :booking_time

    attr_accessor :commodity_group

    attr_accessor :description

    attr_accessor :discounts

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    attr_accessor :indent

    attr_accessor :index

    attr_accessor :info_texts

    attr_accessor :manual_price

    attr_accessor :product

    attr_accessor :quantity

    attr_accessor :sector

    attr_accessor :serial_numbers

    attr_accessor :total

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attendance' => :'attendance',
        :'booking_time' => :'bookingTime',
        :'commodity_group' => :'commodityGroup',
        :'description' => :'description',
        :'discounts' => :'discounts',
        :'id' => :'id',
        :'indent' => :'indent',
        :'index' => :'index',
        :'info_texts' => :'infoTexts',
        :'manual_price' => :'manualPrice',
        :'product' => :'product',
        :'quantity' => :'quantity',
        :'sector' => :'sector',
        :'serial_numbers' => :'serialNumbers',
        :'total' => :'total'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'attendance' => :'ModelReference',
        :'booking_time' => :'Time',
        :'commodity_group' => :'ModelReference',
        :'description' => :'String',
        :'discounts' => :'Array<Discount>',
        :'id' => :'String',
        :'indent' => :'Integer',
        :'index' => :'Integer',
        :'info_texts' => :'Array<String>',
        :'manual_price' => :'Boolean',
        :'product' => :'ModelReference',
        :'quantity' => :'Float',
        :'sector' => :'ModelReference',
        :'serial_numbers' => :'Array<String>',
        :'total' => :'TotalPrice'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::CustomerOrderItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::CustomerOrderItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attendance')
        self.attendance = attributes[:'attendance']
      end

      if attributes.key?(:'booking_time')
        self.booking_time = attributes[:'booking_time']
      end

      if attributes.key?(:'commodity_group')
        self.commodity_group = attributes[:'commodity_group']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'discounts')
        if (value = attributes[:'discounts']).is_a?(Array)
          self.discounts = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'indent')
        self.indent = attributes[:'indent']
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'info_texts')
        if (value = attributes[:'info_texts']).is_a?(Array)
          self.info_texts = value
        end
      end

      if attributes.key?(:'manual_price')
        self.manual_price = attributes[:'manual_price']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'sector')
        self.sector = attributes[:'sector']
      end

      if attributes.key?(:'serial_numbers')
        if (value = attributes[:'serial_numbers']).is_a?(Array)
          self.serial_numbers = value
        end
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
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
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] serial_numbers Value to be assigned
    def serial_numbers=(serial_numbers)
      @serial_numbers = serial_numbers
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attendance == o.attendance &&
          booking_time == o.booking_time &&
          commodity_group == o.commodity_group &&
          description == o.description &&
          discounts == o.discounts &&
          id == o.id &&
          indent == o.indent &&
          index == o.index &&
          info_texts == o.info_texts &&
          manual_price == o.manual_price &&
          product == o.product &&
          quantity == o.quantity &&
          sector == o.sector &&
          serial_numbers == o.serial_numbers &&
          total == o.total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [attendance, booking_time, commodity_group, description, discounts, id, indent, index, info_texts, manual_price, product, quantity, sector, serial_numbers, total].hash
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
      attributes = attributes.transform_keys(&:to_sym)
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
