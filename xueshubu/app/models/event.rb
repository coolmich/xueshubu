class Event < ActiveRecord::Base
    has_attached_file :event_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

    scope :odd, ->{where("id % 2 = ?","1")}
    scope :even, ->{where("id % 2 = ?","0")}

    default_scope { order(:start_date=>:desc) }

    CATEGORY = {1 => '学术', 2 => '文艺', 3 => '旅行', 4 => '运动'}
end
