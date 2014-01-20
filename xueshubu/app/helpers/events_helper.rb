module EventsHelper
  def get_logo
    if event_img
      event_img
    else
      "plane.png"
    end
      
  end

end
