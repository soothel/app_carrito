class TypePayment < ActiveRecord::Base

  #has_many :products
  # Actions using private
  before_save :save_default_values, :if => :new_record?

  # Validate
  # validates_uniqueness_of :name, conditions: -> { where(deleted: '0') }, :case_sensitive => false,:message => "El registro se encuentra en uso."

  # Private Values
  private
    def save_default_values
      self.deleted = 0
    end
end
