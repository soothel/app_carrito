class Product < ApplicationRecord

  belongs_to :category
  belongs_to :mark
  has_many :lineitems, dependent: :destroy
  has_many :carts, through: :lineitems


  # validates_uniqueness_of :name, conditions: -> { where(deleted: '0') }, :case_sensitive => false,:message => "El registro se encuentra en uso."

  # Actions using private
  before_save :save_default_values, :if => :new_record?

  mount_uploader :image, AvatarUploader
  mount_uploader :attach, AvatarUploader


  # Method string on action show
  def str_ranked
    return "No" if ranked == 0
    return "Si" if ranked == 1
  end


  # Private Values
  private
    def save_default_values
      self.deleted = 0
    end

end
