class Customer < ActiveRecord::Base

  belongs_to :country

  # Actions using private
  before_save :save_default_values, :if => :new_record?

  # Validate
  # validates_uniqueness_of :num_doc, conditions: -> { where(deleted: '0') }, :case_sensitive => false,:message => "El registro se encuentra en uso."


  def country_name
    self.country.name
  end

  # Private Values
  private
    def save_default_values
      self.deleted = 0
    end
end
