=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module KoronaCloudClient
  class PosBalance
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    attr_accessor :balance_attempts

    attr_accessor :cashier

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :create_time

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :finish_time

    attr_accessor :summaries

    attr_accessor :summary_changesets

    attr_accessor :items

    attr_accessor :total

    attr_accessor :transaction_receipt_code

    attr_accessor :z_count

    attr_accessor :number_length

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'id' => :'id',
        :'number' => :'number',
        :'revision' => :'revision',
        :'balance_attempts' => :'balanceAttempts',
        :'cashier' => :'cashier',
        :'create_time' => :'createTime',
        :'finish_time' => :'finishTime',
        :'summaries' => :'summaries',
        :'summary_changesets' => :'summaryChangesets',
        :'items' => :'items',
        :'total' => :'total',
        :'transaction_receipt_code' => :'transactionReceiptCode',
        :'z_count' => :'zCount',
        :'number_length' => :'numberLength'
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
        :'balance_attempts' => :'Integer',
        :'cashier' => :'ModelReference',
        :'create_time' => :'Time',
        :'finish_time' => :'Time',
        :'summaries' => :'Array<PosBalanceSummary>',
        :'summary_changesets' => :'Array<PosBalanceSummaryChangeset>',
        :'items' => :'Array<PosBalanceItem>',
        :'total' => :'PosBalanceTotal',
        :'transaction_receipt_code' => :'String',
        :'z_count' => :'Integer',
        :'number_length' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::PosBalance` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::PosBalance`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'balance_attempts')
        self.balance_attempts = attributes[:'balance_attempts']
      end

      if attributes.key?(:'cashier')
        self.cashier = attributes[:'cashier']
      end

      if attributes.key?(:'create_time')
        self.create_time = attributes[:'create_time']
      end

      if attributes.key?(:'finish_time')
        self.finish_time = attributes[:'finish_time']
      end

      if attributes.key?(:'summaries')
        if (value = attributes[:'summaries']).is_a?(Array)
          self.summaries = value
        end
      end

      if attributes.key?(:'summary_changesets')
        if (value = attributes[:'summary_changesets']).is_a?(Array)
          self.summary_changesets = value
        end
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'transaction_receipt_code')
        self.transaction_receipt_code = attributes[:'transaction_receipt_code']
      end

      if attributes.key?(:'z_count')
        self.z_count = attributes[:'z_count']
      end

      if attributes.key?(:'number_length')
        self.number_length = attributes[:'number_length']
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
    # @param [Object] summaries Value to be assigned
    def summaries=(summaries)
      @summaries = summaries
    end

    # Custom attribute writer method with validation
    # @param [Object] summary_changesets Value to be assigned
    def summary_changesets=(summary_changesets)
      @summary_changesets = summary_changesets
    end

    # Custom attribute writer method with validation
    # @param [Object] items Value to be assigned
    def items=(items)
      @items = items
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
          balance_attempts == o.balance_attempts &&
          cashier == o.cashier &&
          create_time == o.create_time &&
          finish_time == o.finish_time &&
          summaries == o.summaries &&
          summary_changesets == o.summary_changesets &&
          items == o.items &&
          total == o.total &&
          transaction_receipt_code == o.transaction_receipt_code &&
          z_count == o.z_count &&
          number_length == o.number_length
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, number, revision, balance_attempts, cashier, create_time, finish_time, summaries, summary_changesets, items, total, transaction_receipt_code, z_count, number_length].hash
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
