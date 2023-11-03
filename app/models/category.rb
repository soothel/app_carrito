class Category < ApplicationRecord
  has_many :products
  # Actions using private
  before_save :save_default_values, :if => :new_record?

  # Validate
  # validates_uniqueness_of :name, conditions: -> { where(deleted: '0') }, :case_sensitive => false,:message => "El registro se encuentra en uso."

  mount_uploader :image, AvatarUploader
  mount_uploader :slider, AvatarUploader
  mount_uploader :slider_mobile, AvatarUploader



  # Private Values
  private
    def save_default_values
      self.deleted = 0
    end
end
