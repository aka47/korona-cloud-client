=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.19.20
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module KoronaCloudClient
  class VoucherTransactionResource
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    attr_accessor :voided

    attr_accessor :type

    attr_accessor :point_of_sale

    attr_accessor :cashier

    attr_accessor :receipt_number

    attr_accessor :booking_time

    attr_accessor :voucher

    attr_accessor :receipt

    attr_accessor :receipt_item

    attr_accessor :amount

    attr_accessor :user

    attr_accessor :comment

    attr_accessor :price

    attr_accessor :external_references

    attr_accessor :delivery_note

    attr_accessor :delivery_note_item

    attr_accessor :invoice

    attr_accessor :invoice_item

    attr_accessor :api_user

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
        :'revision' => :'revision',
        :'voided' => :'voided',
        :'type' => :'type',
        :'point_of_sale' => :'pointOfSale',
        :'cashier' => :'cashier',
        :'receipt_number' => :'receiptNumber',
        :'booking_time' => :'bookingTime',
        :'voucher' => :'voucher',
        :'receipt' => :'receipt',
        :'receipt_item' => :'receiptItem',
        :'amount' => :'amount',
        :'user' => :'user',
        :'comment' => :'comment',
        :'price' => :'price',
        :'external_references' => :'externalReferences',
        :'delivery_note' => :'deliveryNote',
        :'delivery_note_item' => :'deliveryNoteItem',
        :'invoice' => :'invoice',
        :'invoice_item' => :'invoiceItem',
        :'api_user' => :'apiUser'
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
        :'revision' => :'Integer',
        :'voided' => :'Boolean',
        :'type' => :'String',
        :'point_of_sale' => :'ModelReference',
        :'cashier' => :'ModelReference',
        :'receipt_number' => :'String',
        :'booking_time' => :'Time',
        :'voucher' => :'ModelReference',
        :'receipt' => :'ModelReference',
        :'receipt_item' => :'ModelReference',
        :'amount' => :'Float',
        :'user' => :'ModelReference',
        :'comment' => :'String',
        :'price' => :'Float',
        :'external_references' => :'Hash<String, String>',
        :'delivery_note' => :'ModelReference',
        :'delivery_note_item' => :'ModelReference',
        :'invoice' => :'ModelReference',
        :'invoice_item' => :'ModelReference',
        :'api_user' => :'ModelReference'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::VoucherTransactionResource` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::VoucherTransactionResource`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'revision')
        self.revision = attributes[:'revision']
      end

      if attributes.key?(:'voided')
        self.voided = attributes[:'voided']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'point_of_sale')
        self.point_of_sale = attributes[:'point_of_sale']
      end

      if attributes.key?(:'cashier')
        self.cashier = attributes[:'cashier']
      end

      if attributes.key?(:'receipt_number')
        self.receipt_number = attributes[:'receipt_number']
      end

      if attributes.key?(:'booking_time')
        self.booking_time = attributes[:'booking_time']
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      end

      if attributes.key?(:'receipt')
        self.receipt = attributes[:'receipt']
      end

      if attributes.key?(:'receipt_item')
        self.receipt_item = attributes[:'receipt_item']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'external_references')
        if (value = attributes[:'external_references']).is_a?(Hash)
          self.external_references = value
        end
      end

      if attributes.key?(:'delivery_note')
        self.delivery_note = attributes[:'delivery_note']
      end

      if attributes.key?(:'delivery_note_item')
        self.delivery_note_item = attributes[:'delivery_note_item']
      end

      if attributes.key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.key?(:'invoice_item')
        self.invoice_item = attributes[:'invoice_item']
      end

      if attributes.key?(:'api_user')
        self.api_user = attributes[:'api_user']
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
      type_validator = EnumAttributeValidator.new('String', ["CREDIT", "DEBIT"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["CREDIT", "DEBIT"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          id == o.id &&
          revision == o.revision &&
          voided == o.voided &&
          type == o.type &&
          point_of_sale == o.point_of_sale &&
          cashier == o.cashier &&
          receipt_number == o.receipt_number &&
          booking_time == o.booking_time &&
          voucher == o.voucher &&
          receipt == o.receipt &&
          receipt_item == o.receipt_item &&
          amount == o.amount &&
          user == o.user &&
          comment == o.comment &&
          price == o.price &&
          external_references == o.external_references &&
          delivery_note == o.delivery_note &&
          delivery_note_item == o.delivery_note_item &&
          invoice == o.invoice &&
          invoice_item == o.invoice_item &&
          api_user == o.api_user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, revision, voided, type, point_of_sale, cashier, receipt_number, booking_time, voucher, receipt, receipt_item, amount, user, comment, price, external_references, delivery_note, delivery_note_item, invoice, invoice_item, api_user].hash
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