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
  class PosProfile
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    attr_accessor :name

    attr_accessor :automatic_cashier_logout_interval

    attr_accessor :auto_receipt_print

    attr_accessor :force_closed_drawer

    attr_accessor :max_balance_attempts

    attr_accessor :order_number_required

    attr_accessor :payment_service_configurations

    attr_accessor :device_profile_configurations

    attr_accessor :table_service_interval

    attr_accessor :receipt_layout_configuration

    attr_accessor :automatic_end_of_day_interval

    attr_accessor :cent_input

    attr_accessor :require_payment_amount_input

    attr_accessor :kiosk_mode

    attr_accessor :wide_screen_layout

    attr_accessor :automatic_payment_finalization

    attr_accessor :auto_reset_quick_access_pad

    attr_accessor :easy_repeat_product_enabled

    attr_accessor :external_system_calls_on_book_receipt

    attr_accessor :external_system_calls_on_reject_receipt

    attr_accessor :external_system_calls_on_total_receipt

    attr_accessor :external_system_calls_on_void_receipt

    attr_accessor :external_system_calls_on_book_delivery_note

    attr_accessor :external_system_calls_on_reverse_receipt

    attr_accessor :external_system_calls_on_login_cashier

    attr_accessor :external_system_calls_on_logout_cashier

    attr_accessor :designate_balance_difference

    attr_accessor :end_of_day_report_enabled

    attr_accessor :unknown_number_action

    attr_accessor :unknown_number_external_system_call

    attr_accessor :invoicing_receipt_copies

    attr_accessor :cashier_password_required

    attr_accessor :pos_theme

    attr_accessor :template_product

    attr_accessor :digital_receipt

    attr_accessor :digital_signature

    attr_accessor :automatic_customer_creation_from_customer_order

    attr_accessor :master_data_refresh_interval

    attr_accessor :mandatory_return_reason

    attr_accessor :restrict_to_one_parked_receipt

    attr_accessor :automatic_cashier_logout_lock_cashier

    attr_accessor :report_file

    attr_accessor :show_bank_notes_for_payment_denomination_only

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
        :'name' => :'name',
        :'automatic_cashier_logout_interval' => :'automaticCashierLogoutInterval',
        :'auto_receipt_print' => :'autoReceiptPrint',
        :'force_closed_drawer' => :'forceClosedDrawer',
        :'max_balance_attempts' => :'maxBalanceAttempts',
        :'order_number_required' => :'orderNumberRequired',
        :'payment_service_configurations' => :'paymentServiceConfigurations',
        :'device_profile_configurations' => :'deviceProfileConfigurations',
        :'table_service_interval' => :'tableServiceInterval',
        :'receipt_layout_configuration' => :'receiptLayoutConfiguration',
        :'automatic_end_of_day_interval' => :'automaticEndOfDayInterval',
        :'cent_input' => :'centInput',
        :'require_payment_amount_input' => :'requirePaymentAmountInput',
        :'kiosk_mode' => :'kioskMode',
        :'wide_screen_layout' => :'wideScreenLayout',
        :'automatic_payment_finalization' => :'automaticPaymentFinalization',
        :'auto_reset_quick_access_pad' => :'autoResetQuickAccessPad',
        :'easy_repeat_product_enabled' => :'easyRepeatProductEnabled',
        :'external_system_calls_on_book_receipt' => :'externalSystemCallsOnBookReceipt',
        :'external_system_calls_on_reject_receipt' => :'externalSystemCallsOnRejectReceipt',
        :'external_system_calls_on_total_receipt' => :'externalSystemCallsOnTotalReceipt',
        :'external_system_calls_on_void_receipt' => :'externalSystemCallsOnVoidReceipt',
        :'external_system_calls_on_book_delivery_note' => :'externalSystemCallsOnBookDeliveryNote',
        :'external_system_calls_on_reverse_receipt' => :'externalSystemCallsOnReverseReceipt',
        :'external_system_calls_on_login_cashier' => :'externalSystemCallsOnLoginCashier',
        :'external_system_calls_on_logout_cashier' => :'externalSystemCallsOnLogoutCashier',
        :'designate_balance_difference' => :'designateBalanceDifference',
        :'end_of_day_report_enabled' => :'endOfDayReportEnabled',
        :'unknown_number_action' => :'unknownNumberAction',
        :'unknown_number_external_system_call' => :'unknownNumberExternalSystemCall',
        :'invoicing_receipt_copies' => :'invoicingReceiptCopies',
        :'cashier_password_required' => :'cashierPasswordRequired',
        :'pos_theme' => :'posTheme',
        :'template_product' => :'templateProduct',
        :'digital_receipt' => :'digitalReceipt',
        :'digital_signature' => :'digitalSignature',
        :'automatic_customer_creation_from_customer_order' => :'automaticCustomerCreationFromCustomerOrder',
        :'master_data_refresh_interval' => :'masterDataRefreshInterval',
        :'mandatory_return_reason' => :'mandatoryReturnReason',
        :'restrict_to_one_parked_receipt' => :'restrictToOneParkedReceipt',
        :'automatic_cashier_logout_lock_cashier' => :'automaticCashierLogoutLockCashier',
        :'report_file' => :'reportFile',
        :'show_bank_notes_for_payment_denomination_only' => :'showBankNotesForPaymentDenominationOnly'
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
        :'name' => :'String',
        :'automatic_cashier_logout_interval' => :'TimePeriod',
        :'auto_receipt_print' => :'Boolean',
        :'force_closed_drawer' => :'Boolean',
        :'max_balance_attempts' => :'Integer',
        :'order_number_required' => :'Boolean',
        :'payment_service_configurations' => :'Array<PaymentServiceConfiguration>',
        :'device_profile_configurations' => :'Array<DeviceConfiguration>',
        :'table_service_interval' => :'TimePeriod',
        :'receipt_layout_configuration' => :'ModelReference',
        :'automatic_end_of_day_interval' => :'TimePeriod',
        :'cent_input' => :'Boolean',
        :'require_payment_amount_input' => :'Boolean',
        :'kiosk_mode' => :'Boolean',
        :'wide_screen_layout' => :'Boolean',
        :'automatic_payment_finalization' => :'Boolean',
        :'auto_reset_quick_access_pad' => :'Boolean',
        :'easy_repeat_product_enabled' => :'Boolean',
        :'external_system_calls_on_book_receipt' => :'Array<ModelReference>',
        :'external_system_calls_on_reject_receipt' => :'Array<ModelReference>',
        :'external_system_calls_on_total_receipt' => :'Array<ModelReference>',
        :'external_system_calls_on_void_receipt' => :'Array<ModelReference>',
        :'external_system_calls_on_book_delivery_note' => :'Array<ModelReference>',
        :'external_system_calls_on_reverse_receipt' => :'Array<ModelReference>',
        :'external_system_calls_on_login_cashier' => :'Array<ModelReference>',
        :'external_system_calls_on_logout_cashier' => :'Array<ModelReference>',
        :'designate_balance_difference' => :'Boolean',
        :'end_of_day_report_enabled' => :'Boolean',
        :'unknown_number_action' => :'String',
        :'unknown_number_external_system_call' => :'ModelReference',
        :'invoicing_receipt_copies' => :'Integer',
        :'cashier_password_required' => :'Boolean',
        :'pos_theme' => :'String',
        :'template_product' => :'ModelReference',
        :'digital_receipt' => :'Boolean',
        :'digital_signature' => :'Boolean',
        :'automatic_customer_creation_from_customer_order' => :'Boolean',
        :'master_data_refresh_interval' => :'TimePeriod',
        :'mandatory_return_reason' => :'Boolean',
        :'restrict_to_one_parked_receipt' => :'Boolean',
        :'automatic_cashier_logout_lock_cashier' => :'Boolean',
        :'report_file' => :'ModelReference',
        :'show_bank_notes_for_payment_denomination_only' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::PosProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::PosProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'automatic_cashier_logout_interval')
        self.automatic_cashier_logout_interval = attributes[:'automatic_cashier_logout_interval']
      end

      if attributes.key?(:'auto_receipt_print')
        self.auto_receipt_print = attributes[:'auto_receipt_print']
      end

      if attributes.key?(:'force_closed_drawer')
        self.force_closed_drawer = attributes[:'force_closed_drawer']
      end

      if attributes.key?(:'max_balance_attempts')
        self.max_balance_attempts = attributes[:'max_balance_attempts']
      end

      if attributes.key?(:'order_number_required')
        self.order_number_required = attributes[:'order_number_required']
      end

      if attributes.key?(:'payment_service_configurations')
        if (value = attributes[:'payment_service_configurations']).is_a?(Array)
          self.payment_service_configurations = value
        end
      end

      if attributes.key?(:'device_profile_configurations')
        if (value = attributes[:'device_profile_configurations']).is_a?(Array)
          self.device_profile_configurations = value
        end
      end

      if attributes.key?(:'table_service_interval')
        self.table_service_interval = attributes[:'table_service_interval']
      end

      if attributes.key?(:'receipt_layout_configuration')
        self.receipt_layout_configuration = attributes[:'receipt_layout_configuration']
      end

      if attributes.key?(:'automatic_end_of_day_interval')
        self.automatic_end_of_day_interval = attributes[:'automatic_end_of_day_interval']
      end

      if attributes.key?(:'cent_input')
        self.cent_input = attributes[:'cent_input']
      end

      if attributes.key?(:'require_payment_amount_input')
        self.require_payment_amount_input = attributes[:'require_payment_amount_input']
      end

      if attributes.key?(:'kiosk_mode')
        self.kiosk_mode = attributes[:'kiosk_mode']
      end

      if attributes.key?(:'wide_screen_layout')
        self.wide_screen_layout = attributes[:'wide_screen_layout']
      end

      if attributes.key?(:'automatic_payment_finalization')
        self.automatic_payment_finalization = attributes[:'automatic_payment_finalization']
      end

      if attributes.key?(:'auto_reset_quick_access_pad')
        self.auto_reset_quick_access_pad = attributes[:'auto_reset_quick_access_pad']
      end

      if attributes.key?(:'easy_repeat_product_enabled')
        self.easy_repeat_product_enabled = attributes[:'easy_repeat_product_enabled']
      end

      if attributes.key?(:'external_system_calls_on_book_receipt')
        if (value = attributes[:'external_system_calls_on_book_receipt']).is_a?(Array)
          self.external_system_calls_on_book_receipt = value
        end
      end

      if attributes.key?(:'external_system_calls_on_reject_receipt')
        if (value = attributes[:'external_system_calls_on_reject_receipt']).is_a?(Array)
          self.external_system_calls_on_reject_receipt = value
        end
      end

      if attributes.key?(:'external_system_calls_on_total_receipt')
        if (value = attributes[:'external_system_calls_on_total_receipt']).is_a?(Array)
          self.external_system_calls_on_total_receipt = value
        end
      end

      if attributes.key?(:'external_system_calls_on_void_receipt')
        if (value = attributes[:'external_system_calls_on_void_receipt']).is_a?(Array)
          self.external_system_calls_on_void_receipt = value
        end
      end

      if attributes.key?(:'external_system_calls_on_book_delivery_note')
        if (value = attributes[:'external_system_calls_on_book_delivery_note']).is_a?(Array)
          self.external_system_calls_on_book_delivery_note = value
        end
      end

      if attributes.key?(:'external_system_calls_on_reverse_receipt')
        if (value = attributes[:'external_system_calls_on_reverse_receipt']).is_a?(Array)
          self.external_system_calls_on_reverse_receipt = value
        end
      end

      if attributes.key?(:'external_system_calls_on_login_cashier')
        if (value = attributes[:'external_system_calls_on_login_cashier']).is_a?(Array)
          self.external_system_calls_on_login_cashier = value
        end
      end

      if attributes.key?(:'external_system_calls_on_logout_cashier')
        if (value = attributes[:'external_system_calls_on_logout_cashier']).is_a?(Array)
          self.external_system_calls_on_logout_cashier = value
        end
      end

      if attributes.key?(:'designate_balance_difference')
        self.designate_balance_difference = attributes[:'designate_balance_difference']
      end

      if attributes.key?(:'end_of_day_report_enabled')
        self.end_of_day_report_enabled = attributes[:'end_of_day_report_enabled']
      end

      if attributes.key?(:'unknown_number_action')
        self.unknown_number_action = attributes[:'unknown_number_action']
      end

      if attributes.key?(:'unknown_number_external_system_call')
        self.unknown_number_external_system_call = attributes[:'unknown_number_external_system_call']
      end

      if attributes.key?(:'invoicing_receipt_copies')
        self.invoicing_receipt_copies = attributes[:'invoicing_receipt_copies']
      end

      if attributes.key?(:'cashier_password_required')
        self.cashier_password_required = attributes[:'cashier_password_required']
      end

      if attributes.key?(:'pos_theme')
        self.pos_theme = attributes[:'pos_theme']
      end

      if attributes.key?(:'template_product')
        self.template_product = attributes[:'template_product']
      end

      if attributes.key?(:'digital_receipt')
        self.digital_receipt = attributes[:'digital_receipt']
      end

      if attributes.key?(:'digital_signature')
        self.digital_signature = attributes[:'digital_signature']
      end

      if attributes.key?(:'automatic_customer_creation_from_customer_order')
        self.automatic_customer_creation_from_customer_order = attributes[:'automatic_customer_creation_from_customer_order']
      end

      if attributes.key?(:'master_data_refresh_interval')
        self.master_data_refresh_interval = attributes[:'master_data_refresh_interval']
      end

      if attributes.key?(:'mandatory_return_reason')
        self.mandatory_return_reason = attributes[:'mandatory_return_reason']
      end

      if attributes.key?(:'restrict_to_one_parked_receipt')
        self.restrict_to_one_parked_receipt = attributes[:'restrict_to_one_parked_receipt']
      end

      if attributes.key?(:'automatic_cashier_logout_lock_cashier')
        self.automatic_cashier_logout_lock_cashier = attributes[:'automatic_cashier_logout_lock_cashier']
      end

      if attributes.key?(:'report_file')
        self.report_file = attributes[:'report_file']
      end

      if attributes.key?(:'show_bank_notes_for_payment_denomination_only')
        self.show_bank_notes_for_payment_denomination_only = attributes[:'show_bank_notes_for_payment_denomination_only']
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
      unknown_number_action_validator = EnumAttributeValidator.new('String', ["CARRY_ON_WITH_MESSAGE", "HOLD_ON_WITH_DIALOG", "EXTERNAL_SYSTEM_CALL"])
      return false unless unknown_number_action_validator.valid?(@unknown_number_action)
      pos_theme_validator = EnumAttributeValidator.new('String', ["CLASSIC", "FLAT"])
      return false unless pos_theme_validator.valid?(@pos_theme)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_service_configurations Value to be assigned
    def payment_service_configurations=(payment_service_configurations)
      @payment_service_configurations = payment_service_configurations
    end

    # Custom attribute writer method with validation
    # @param [Object] device_profile_configurations Value to be assigned
    def device_profile_configurations=(device_profile_configurations)
      @device_profile_configurations = device_profile_configurations
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unknown_number_action Object to be assigned
    def unknown_number_action=(unknown_number_action)
      validator = EnumAttributeValidator.new('String', ["CARRY_ON_WITH_MESSAGE", "HOLD_ON_WITH_DIALOG", "EXTERNAL_SYSTEM_CALL"])
      unless validator.valid?(unknown_number_action)
        fail ArgumentError, "invalid value for \"unknown_number_action\", must be one of #{validator.allowable_values}."
      end
      @unknown_number_action = unknown_number_action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pos_theme Object to be assigned
    def pos_theme=(pos_theme)
      validator = EnumAttributeValidator.new('String', ["CLASSIC", "FLAT"])
      unless validator.valid?(pos_theme)
        fail ArgumentError, "invalid value for \"pos_theme\", must be one of #{validator.allowable_values}."
      end
      @pos_theme = pos_theme
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
          name == o.name &&
          automatic_cashier_logout_interval == o.automatic_cashier_logout_interval &&
          auto_receipt_print == o.auto_receipt_print &&
          force_closed_drawer == o.force_closed_drawer &&
          max_balance_attempts == o.max_balance_attempts &&
          order_number_required == o.order_number_required &&
          payment_service_configurations == o.payment_service_configurations &&
          device_profile_configurations == o.device_profile_configurations &&
          table_service_interval == o.table_service_interval &&
          receipt_layout_configuration == o.receipt_layout_configuration &&
          automatic_end_of_day_interval == o.automatic_end_of_day_interval &&
          cent_input == o.cent_input &&
          require_payment_amount_input == o.require_payment_amount_input &&
          kiosk_mode == o.kiosk_mode &&
          wide_screen_layout == o.wide_screen_layout &&
          automatic_payment_finalization == o.automatic_payment_finalization &&
          auto_reset_quick_access_pad == o.auto_reset_quick_access_pad &&
          easy_repeat_product_enabled == o.easy_repeat_product_enabled &&
          external_system_calls_on_book_receipt == o.external_system_calls_on_book_receipt &&
          external_system_calls_on_reject_receipt == o.external_system_calls_on_reject_receipt &&
          external_system_calls_on_total_receipt == o.external_system_calls_on_total_receipt &&
          external_system_calls_on_void_receipt == o.external_system_calls_on_void_receipt &&
          external_system_calls_on_book_delivery_note == o.external_system_calls_on_book_delivery_note &&
          external_system_calls_on_reverse_receipt == o.external_system_calls_on_reverse_receipt &&
          external_system_calls_on_login_cashier == o.external_system_calls_on_login_cashier &&
          external_system_calls_on_logout_cashier == o.external_system_calls_on_logout_cashier &&
          designate_balance_difference == o.designate_balance_difference &&
          end_of_day_report_enabled == o.end_of_day_report_enabled &&
          unknown_number_action == o.unknown_number_action &&
          unknown_number_external_system_call == o.unknown_number_external_system_call &&
          invoicing_receipt_copies == o.invoicing_receipt_copies &&
          cashier_password_required == o.cashier_password_required &&
          pos_theme == o.pos_theme &&
          template_product == o.template_product &&
          digital_receipt == o.digital_receipt &&
          digital_signature == o.digital_signature &&
          automatic_customer_creation_from_customer_order == o.automatic_customer_creation_from_customer_order &&
          master_data_refresh_interval == o.master_data_refresh_interval &&
          mandatory_return_reason == o.mandatory_return_reason &&
          restrict_to_one_parked_receipt == o.restrict_to_one_parked_receipt &&
          automatic_cashier_logout_lock_cashier == o.automatic_cashier_logout_lock_cashier &&
          report_file == o.report_file &&
          show_bank_notes_for_payment_denomination_only == o.show_bank_notes_for_payment_denomination_only
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, revision, number, name, automatic_cashier_logout_interval, auto_receipt_print, force_closed_drawer, max_balance_attempts, order_number_required, payment_service_configurations, device_profile_configurations, table_service_interval, receipt_layout_configuration, automatic_end_of_day_interval, cent_input, require_payment_amount_input, kiosk_mode, wide_screen_layout, automatic_payment_finalization, auto_reset_quick_access_pad, easy_repeat_product_enabled, external_system_calls_on_book_receipt, external_system_calls_on_reject_receipt, external_system_calls_on_total_receipt, external_system_calls_on_void_receipt, external_system_calls_on_book_delivery_note, external_system_calls_on_reverse_receipt, external_system_calls_on_login_cashier, external_system_calls_on_logout_cashier, designate_balance_difference, end_of_day_report_enabled, unknown_number_action, unknown_number_external_system_call, invoicing_receipt_copies, cashier_password_required, pos_theme, template_product, digital_receipt, digital_signature, automatic_customer_creation_from_customer_order, master_data_refresh_interval, mandatory_return_reason, restrict_to_one_parked_receipt, automatic_cashier_logout_lock_cashier, report_file, show_bank_notes_for_payment_denomination_only].hash
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
