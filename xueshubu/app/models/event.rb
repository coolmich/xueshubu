class Event < ActiveRecord::Base
    has_attached_file :event_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

    scope :this_week, ->{where(:start_date=>Time.current.all_week)}
    scope :today, ->{where(:start_date=>Time.current.all_day)}
    scope :tomorrow, ->{where(:start_date=>Date.tomorrow.at_beginning_of_day..Date.tomorrow.at_end_of_day)}
    scope :weekend, ->{where(:start_date=>(Date.today.end_of_week - 1)..(Date.today.end_of_week + 1))}
    scope :nextweek, ->{where(:start_date=>(Date.today.next_week)..(Date.today.next_week + 7))}

    scope :all_index, ->{ where(:start_date=>(Date.yesterday-3)..(Date.today+300))}

    scope :old_events, ->{where(:start_date=>(Date.today-120)..(Date.yesterday)-30)}

    CATEGORY = {1 => '学术', 2 => '文艺', 3 => '旅行', 4 => '运动'}
end
