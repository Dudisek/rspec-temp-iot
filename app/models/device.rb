class Device < ActiveRecord::Base

  default_scope { order('id DESC') }

  def name=(value)
    raise ArgumentError unless value.is_a?(String)
    raise ArgumentError unless value.size >= 4 && value.size <= 16
    super
  end

  def address=(value)
    raise ArgumentError unless value.is_a?(String)
    raise ArgumentError unless /^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$/ =~ value
    super
  end


# class Device < ActiveRecord::Base
#     belongs_to :user
#     default_scope  { order(:created_at => :desc) }
#     before_save :validate_error

#     def validate_error
#         raise ArgumentError if name.length < 4 || name.length > 16
#         raise ArgumentError unless name.respond_to?(:to_str) 
#         raise ArgumentError unless address.respond_to?(:to_str) 
#     end
# end

