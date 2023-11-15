class Slider < ApplicationRecord
  # Actions using private
 before_save :save_default_values, :if => :new_record?

 # Validate
 validates_uniqueness_of :name, conditions: -> { where(deleted: '0') }, :case_sensitive => false,:message => "El registro se encuentra en uso."

 mount_uploader :image, AvatarUploader
 mount_uploader :image_mobile, AvatarUploader

 def str_deleted
   if self.deleted  == 1
     return "<span class='badge badge-pill bg-danger'><i class='fa fa-close'></i> Eliminado</span>".html_safe
   else
     return "<span class='badge badge-pill bg-success'><i class='fa fa-circle'></i> Activo</span>".html_safe
   end
 end
 def str_remark_icon
   if self.remark  == 1
     return "<span style= 'top: 0; font-size: 20px' class='p-auto badge badge-pill text-warning'><i class='fa fa-star'></i> </span>".html_safe
   else
     return "<span style= 'top: 0; font-size: 20px' class='p-auto badge badge-pill text-black'><i class='fa fa-star'></i></span>".html_safe
   end
 end

 # Method string on action show
 def str_remark
   return "Secundario" if remark == 0
   return "Principal"  if remark == 1
 end


 # Private Values
 private
   def save_default_values
     self.deleted = 0
   end

end
