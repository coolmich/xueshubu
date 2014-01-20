task :auto_delete_events => :environment do
  Event.old_events.each do |e|
    e.destroy
  end
end