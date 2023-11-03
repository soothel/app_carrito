class Quote < ApplicationRecord
  #extend FriendlyId
  #friendly_id :lastname, use: :slugged
  # Model relationships
  #has_many :order_services
  #belongs_to :country
  belongs_to :cart
  has_many :sales
  
  # Audit Gem
  #audited
  #has_associated_audits

  # Actions using private
  before_save :save_default_values, :if => :new_record?
  after_create :update_values_cart

  # Method string on action show
  def str_created_at
    if self.created_at.strftime("%m").to_s == "01"
      self.created_at.strftime("%d").to_s + " de Enero del " + self.created_at.strftime("%Y").to_s
    elsif self.created_at.strftime("%m").to_s == "02"
      self.created_at.strftime("%d").to_s + " de Febrero del " + self.created_at.strftime("%Y").to_s
    elsif self.created_at.strftime("%m").to_s == "03"
      self.created_at.strftime("%d").to_s + " de Marzo del " + self.created_at.strftime("%Y").to_s
    elsif self.created_at.strftime("%m").to_s == "04"
      self.created_at.strftime("%d").to_s + " de Abril del " + self.created_at.strftime("%Y").to_s                      
    elsif self.created_at.strftime("%m").to_s == "05"
      self.created_at.strftime("%d").to_s + " de Mayo del " + self.created_at.strftime("%Y").to_s
    elsif self.created_at.strftime("%m").to_s == "06"
      self.created_at.strftime("%d").to_s + " de Junio del " + self.created_at.strftime("%Y").to_s
    elsif self.created_at.strftime("%m").to_s == "07"
      self.created_at.strftime("%d").to_s + " de Julio del " + self.created_at.strftime("%Y").to_s      
    elsif self.created_at.strftime("%m").to_s == "08"
      self.created_at.strftime("%d").to_s + " de Agosto del " + self.created_at.strftime("%Y").to_s      
    elsif self.created_at.strftime("%m").to_s == "09"
      self.created_at.strftime("%d").to_s + " de Setiembre del " + self.created_at.strftime("%Y").to_s      
    elsif self.created_at.strftime("%m").to_s == "10"
      self.created_at.strftime("%d").to_s + " de Octubre del " + self.created_at.strftime("%Y").to_s      
    elsif self.created_at.strftime("%m").to_s == "11"
      self.created_at.strftime("%d").to_s + " de Noviembre del " + self.created_at.strftime("%Y").to_s                              
    elsif self.created_at.strftime("%m").to_s == "12"
      self.created_at.strftime("%d").to_s + " de Diciembre del " + self.created_at.strftime("%Y").to_s            
    end
  end

  # Method string on action show
  def str_requested
    self.created_at.strftime("%d-%m-%Y %H:%M:%S")
  end

  # Method string on action show
  def str_requested_table
    self.created_at.strftime("%Y%m%d")
  end  


 # Private Methods
  private
    def save_default_values
      self.deleted = 0
      self.slug = (0...50).map { ('a'..'z').to_a[rand(15)] }.join
     
    end 

    def update_values_cart
      Cart.where("id = ?",self.cart_id).update_all(deleted: 0)
    end     
end 