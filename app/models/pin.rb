class Pin < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :user
  has_attached_file :pin_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :pin_image, content_type: /\Aimage\/.*\Z/

  def repost(user)
    repost_pin = self.dup
    repost_pin.user_id = user.id
    repost_pin.original_pin_id = self.id
    repost_pin.save
  end

end
