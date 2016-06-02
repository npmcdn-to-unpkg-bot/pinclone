class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :pin_image, styles: { medium: "300x300>", thumb: "100x100>" }
  #validates_attachment_content_type :pin_image, :content_type => ["image/jpeg", "image/gif", "image/png"]
  validates_attachment_content_type :pin_image, content_type: /\Aimage\/.*\Z/
  # validates_attachment_content_type :pin_image, :content_type => [/\Aimage/, 'application/octet-stream']
  #do_not_validate_attachment_file_type :pin_image

end
