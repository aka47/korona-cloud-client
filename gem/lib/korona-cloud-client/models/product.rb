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
  class Product
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    attr_accessor :alternative_sector

    attr_accessor :assortment

    attr_accessor :codes

    attr_accessor :commodity_group

    attr_accessor :conversion

    attr_accessor :costs

    attr_accessor :deactivated

    attr_accessor :deposit

    attr_accessor :descriptions

    attr_accessor :discountable

    attr_accessor :image

    attr_accessor :info_texts

    attr_accessor :item_sequence

    attr_accessor :last_purchase_price

    attr_accessor :listed

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :listed_since

    attr_accessor :max_price

    attr_accessor :min_price

    attr_accessor :name

    attr_accessor :packaging_quantity

    attr_accessor :packaging_required

    attr_accessor :packaging_unit

    attr_accessor :personalization_required

    attr_accessor :price_changable

    attr_accessor :prices

    attr_accessor :print_tickets_separately

    attr_accessor :production_type

    attr_accessor :recommended_retail_price

    attr_accessor :related_products

    attr_accessor :sector

    attr_accessor :serial_number_required

    attr_accessor :subproduct_presentation

    attr_accessor :subproducts

    attr_accessor :supplier_prices

    attr_accessor :tags

    attr_accessor :ticket_definition

    attr_accessor :track_inventory

    attr_accessor :media_urls

    attr_accessor :quantity_denomination

    attr_accessor :special_prices

    attr_accessor :verification_requirements

    attr_accessor :sales_lock

    attr_accessor :stock_return_unsellable

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
        :'number' => :'number',
        :'alternative_sector' => :'alternativeSector',
        :'assortment' => :'assortment',
        :'codes' => :'codes',
        :'commodity_group' => :'commodityGroup',
        :'conversion' => :'conversion',
        :'costs' => :'costs',
        :'deactivated' => :'deactivated',
        :'deposit' => :'deposit',
        :'descriptions' => :'descriptions',
        :'discountable' => :'discountable',
        :'image' => :'image',
        :'info_texts' => :'infoTexts',
        :'item_sequence' => :'itemSequence',
        :'last_purchase_price' => :'lastPurchasePrice',
        :'listed' => :'listed',
        :'listed_since' => :'listedSince',
        :'max_price' => :'maxPrice',
        :'min_price' => :'minPrice',
        :'name' => :'name',
        :'packaging_quantity' => :'packagingQuantity',
        :'packaging_required' => :'packagingRequired',
        :'packaging_unit' => :'packagingUnit',
        :'personalization_required' => :'personalizationRequired',
        :'price_changable' => :'priceChangable',
        :'prices' => :'prices',
        :'print_tickets_separately' => :'printTicketsSeparately',
        :'production_type' => :'productionType',
        :'recommended_retail_price' => :'recommendedRetailPrice',
        :'related_products' => :'relatedProducts',
        :'sector' => :'sector',
        :'serial_number_required' => :'serialNumberRequired',
        :'subproduct_presentation' => :'subproductPresentation',
        :'subproducts' => :'subproducts',
        :'supplier_prices' => :'supplierPrices',
        :'tags' => :'tags',
        :'ticket_definition' => :'ticketDefinition',
        :'track_inventory' => :'trackInventory',
        :'media_urls' => :'mediaUrls',
        :'quantity_denomination' => :'quantityDenomination',
        :'special_prices' => :'specialPrices',
        :'verification_requirements' => :'verificationRequirements',
        :'sales_lock' => :'salesLock',
        :'stock_return_unsellable' => :'stockReturnUnsellable'
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
        :'number' => :'String',
        :'alternative_sector' => :'ModelReference',
        :'assortment' => :'ModelReference',
        :'codes' => :'Array<ProductCode>',
        :'commodity_group' => :'ModelReference',
        :'conversion' => :'Boolean',
        :'costs' => :'Float',
        :'deactivated' => :'Boolean',
        :'deposit' => :'Boolean',
        :'descriptions' => :'Array<ProductDescription>',
        :'discountable' => :'Boolean',
        :'image' => :'ModelReference',
        :'info_texts' => :'Array<ModelReference>',
        :'item_sequence' => :'ModelReference',
        :'last_purchase_price' => :'Float',
        :'listed' => :'Boolean',
        :'listed_since' => :'Time',
        :'max_price' => :'Float',
        :'min_price' => :'Float',
        :'name' => :'String',
        :'packaging_quantity' => :'Float',
        :'packaging_required' => :'Boolean',
        :'packaging_unit' => :'String',
        :'personalization_required' => :'Boolean',
        :'price_changable' => :'Boolean',
        :'prices' => :'Array<ProductPrice>',
        :'print_tickets_separately' => :'Boolean',
        :'production_type' => :'ModelReference',
        :'recommended_retail_price' => :'Float',
        :'related_products' => :'ModelReference',
        :'sector' => :'ModelReference',
        :'serial_number_required' => :'Boolean',
        :'subproduct_presentation' => :'String',
        :'subproducts' => :'Array<ProductSubproduct>',
        :'supplier_prices' => :'Array<ProductSupplierPrice>',
        :'tags' => :'Array<ModelReference>',
        :'ticket_definition' => :'ModelReference',
        :'track_inventory' => :'Boolean',
        :'media_urls' => :'Array<MediaUrl>',
        :'quantity_denomination' => :'Float',
        :'special_prices' => :'Array<ProductSpecialPrice>',
        :'verification_requirements' => :'Array<ModelReference>',
        :'sales_lock' => :'Boolean',
        :'stock_return_unsellable' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::Product` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::Product`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'alternative_sector')
        self.alternative_sector = attributes[:'alternative_sector']
      end

      if attributes.key?(:'assortment')
        self.assortment = attributes[:'assortment']
      end

      if attributes.key?(:'codes')
        if (value = attributes[:'codes']).is_a?(Array)
          self.codes = value
        end
      end

      if attributes.key?(:'commodity_group')
        self.commodity_group = attributes[:'commodity_group']
      end

      if attributes.key?(:'conversion')
        self.conversion = attributes[:'conversion']
      end

      if attributes.key?(:'costs')
        self.costs = attributes[:'costs']
      end

      if attributes.key?(:'deactivated')
        self.deactivated = attributes[:'deactivated']
      end

      if attributes.key?(:'deposit')
        self.deposit = attributes[:'deposit']
      end

      if attributes.key?(:'descriptions')
        if (value = attributes[:'descriptions']).is_a?(Array)
          self.descriptions = value
        end
      end

      if attributes.key?(:'discountable')
        self.discountable = attributes[:'discountable']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'info_texts')
        if (value = attributes[:'info_texts']).is_a?(Array)
          self.info_texts = value
        end
      end

      if attributes.key?(:'item_sequence')
        self.item_sequence = attributes[:'item_sequence']
      end

      if attributes.key?(:'last_purchase_price')
        self.last_purchase_price = attributes[:'last_purchase_price']
      end

      if attributes.key?(:'listed')
        self.listed = attributes[:'listed']
      end

      if attributes.key?(:'listed_since')
        self.listed_since = attributes[:'listed_since']
      end

      if attributes.key?(:'max_price')
        self.max_price = attributes[:'max_price']
      end

      if attributes.key?(:'min_price')
        self.min_price = attributes[:'min_price']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'packaging_quantity')
        self.packaging_quantity = attributes[:'packaging_quantity']
      end

      if attributes.key?(:'packaging_required')
        self.packaging_required = attributes[:'packaging_required']
      end

      if attributes.key?(:'packaging_unit')
        self.packaging_unit = attributes[:'packaging_unit']
      end

      if attributes.key?(:'personalization_required')
        self.personalization_required = attributes[:'personalization_required']
      end

      if attributes.key?(:'price_changable')
        self.price_changable = attributes[:'price_changable']
      end

      if attributes.key?(:'prices')
        if (value = attributes[:'prices']).is_a?(Array)
          self.prices = value
        end
      end

      if attributes.key?(:'print_tickets_separately')
        self.print_tickets_separately = attributes[:'print_tickets_separately']
      end

      if attributes.key?(:'production_type')
        self.production_type = attributes[:'production_type']
      end

      if attributes.key?(:'recommended_retail_price')
        self.recommended_retail_price = attributes[:'recommended_retail_price']
      end

      if attributes.key?(:'related_products')
        self.related_products = attributes[:'related_products']
      end

      if attributes.key?(:'sector')
        self.sector = attributes[:'sector']
      end

      if attributes.key?(:'serial_number_required')
        self.serial_number_required = attributes[:'serial_number_required']
      end

      if attributes.key?(:'subproduct_presentation')
        self.subproduct_presentation = attributes[:'subproduct_presentation']
      end

      if attributes.key?(:'subproducts')
        if (value = attributes[:'subproducts']).is_a?(Array)
          self.subproducts = value
        end
      end

      if attributes.key?(:'supplier_prices')
        if (value = attributes[:'supplier_prices']).is_a?(Array)
          self.supplier_prices = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'ticket_definition')
        self.ticket_definition = attributes[:'ticket_definition']
      end

      if attributes.key?(:'track_inventory')
        self.track_inventory = attributes[:'track_inventory']
      end

      if attributes.key?(:'media_urls')
        if (value = attributes[:'media_urls']).is_a?(Array)
          self.media_urls = value
        end
      end

      if attributes.key?(:'quantity_denomination')
        self.quantity_denomination = attributes[:'quantity_denomination']
      end

      if attributes.key?(:'special_prices')
        if (value = attributes[:'special_prices']).is_a?(Array)
          self.special_prices = value
        end
      end

      if attributes.key?(:'verification_requirements')
        if (value = attributes[:'verification_requirements']).is_a?(Array)
          self.verification_requirements = value
        end
      end

      if attributes.key?(:'sales_lock')
        self.sales_lock = attributes[:'sales_lock']
      end

      if attributes.key?(:'stock_return_unsellable')
        self.stock_return_unsellable = attributes[:'stock_return_unsellable']
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
      packaging_unit_validator = EnumAttributeValidator.new('String', ["CUBIC_INCH", "CUBIC_METER", "FLUID_OUNCE", "GALLON_FL", "GRAM", "ONE_HUNDRED_METERS", "INCH", "KILOGRAM", "LITER", "CENTIMETER", "METER", "MILLILITER", "OUNCE", "POUND", "SQUARE_INCH", "SQUARE_METER"])
      return false unless packaging_unit_validator.valid?(@packaging_unit)
      subproduct_presentation_validator = EnumAttributeValidator.new('String', ["DEFAULT", "HIDE_ALL", "HIDE_PRICES", "HIDE_QUANTITIES"])
      return false unless subproduct_presentation_validator.valid?(@subproduct_presentation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] packaging_unit Object to be assigned
    def packaging_unit=(packaging_unit)
      validator = EnumAttributeValidator.new('String', ["CUBIC_INCH", "CUBIC_METER", "FLUID_OUNCE", "GALLON_FL", "GRAM", "ONE_HUNDRED_METERS", "INCH", "KILOGRAM", "LITER", "CENTIMETER", "METER", "MILLILITER", "OUNCE", "POUND", "SQUARE_INCH", "SQUARE_METER"])
      unless validator.valid?(packaging_unit)
        fail ArgumentError, "invalid value for \"packaging_unit\", must be one of #{validator.allowable_values}."
      end
      @packaging_unit = packaging_unit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subproduct_presentation Object to be assigned
    def subproduct_presentation=(subproduct_presentation)
      validator = EnumAttributeValidator.new('String', ["DEFAULT", "HIDE_ALL", "HIDE_PRICES", "HIDE_QUANTITIES"])
      unless validator.valid?(subproduct_presentation)
        fail ArgumentError, "invalid value for \"subproduct_presentation\", must be one of #{validator.allowable_values}."
      end
      @subproduct_presentation = subproduct_presentation
    end

    # Custom attribute writer method with validation
    # @param [Object] media_urls Value to be assigned
    def media_urls=(media_urls)
      @media_urls = media_urls
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          id == o.id &&
          revision == o.revision &&
          number == o.number &&
          alternative_sector == o.alternative_sector &&
          assortment == o.assortment &&
          codes == o.codes &&
          commodity_group == o.commodity_group &&
          conversion == o.conversion &&
          costs == o.costs &&
          deactivated == o.deactivated &&
          deposit == o.deposit &&
          descriptions == o.descriptions &&
          discountable == o.discountable &&
          image == o.image &&
          info_texts == o.info_texts &&
          item_sequence == o.item_sequence &&
          last_purchase_price == o.last_purchase_price &&
          listed == o.listed &&
          listed_since == o.listed_since &&
          max_price == o.max_price &&
          min_price == o.min_price &&
          name == o.name &&
          packaging_quantity == o.packaging_quantity &&
          packaging_required == o.packaging_required &&
          packaging_unit == o.packaging_unit &&
          personalization_required == o.personalization_required &&
          price_changable == o.price_changable &&
          prices == o.prices &&
          print_tickets_separately == o.print_tickets_separately &&
          production_type == o.production_type &&
          recommended_retail_price == o.recommended_retail_price &&
          related_products == o.related_products &&
          sector == o.sector &&
          serial_number_required == o.serial_number_required &&
          subproduct_presentation == o.subproduct_presentation &&
          subproducts == o.subproducts &&
          supplier_prices == o.supplier_prices &&
          tags == o.tags &&
          ticket_definition == o.ticket_definition &&
          track_inventory == o.track_inventory &&
          media_urls == o.media_urls &&
          quantity_denomination == o.quantity_denomination &&
          special_prices == o.special_prices &&
          verification_requirements == o.verification_requirements &&
          sales_lock == o.sales_lock &&
          stock_return_unsellable == o.stock_return_unsellable
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, revision, number, alternative_sector, assortment, codes, commodity_group, conversion, costs, deactivated, deposit, descriptions, discountable, image, info_texts, item_sequence, last_purchase_price, listed, listed_since, max_price, min_price, name, packaging_quantity, packaging_required, packaging_unit, personalization_required, price_changable, prices, print_tickets_separately, production_type, recommended_retail_price, related_products, sector, serial_number_required, subproduct_presentation, subproducts, supplier_prices, tags, ticket_definition, track_inventory, media_urls, quantity_denomination, special_prices, verification_requirements, sales_lock, stock_return_unsellable].hash
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
