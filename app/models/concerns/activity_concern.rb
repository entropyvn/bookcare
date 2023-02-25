module ActivityConcern
  extend ActiveSupport::Concern

  def self.included(klass)
    klass.extend ClassMethods

    klass.class_eval do
      include InstanceMethods
    end
  end

  module ClassMethods
  end

  # Implement the model methods
  module InstanceMethods
    EXCLUDE_FIELDS = %w[id created_at updated_at encrypted_password token].freeze

    # Convert the changes log to the readable text
    def changeset_text
      {}.tap do |param|
        changeset.each_key do |field_name|
          next if (data = generate_changeset(field_name)).blank?

          param[current_model.human_attribute_name(field_name)] = data
        end
      end
    end

    def history_item
      current_model.new(changeset_attributes)
    end

    def current_item
      current_model.new(changeset_attributes(1))
    end

    def changeset_attributes(index = 0)
      changeset.map do |field_name, data|
        next if (field_value = data[index]).blank?

        field_value = YAML.load(field_value) if field_value.is_a?(String)
        [field_name, field_value]
      end.compact.to_h
    end

    private

    def generate_changeset(field_name)
      return if EXCLUDE_FIELDS.include?(field_name)

      field_method = current_item.respond_to?("#{field_name}_text") ? "#{field_name}_text" : field_name
      history_value = history_item.send(field_method)
      current_value = current_item.send(field_method)
      return if history_value == current_value

      [history_value, current_value]
    end

    def current_model
      @current_model ||= self.class.name.demodulize.gsub('Activity', '').constantize
    end
  end
end
