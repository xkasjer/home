# http://wklej.org/id/1557684/
Room.destroy_all
%w( Kitchen Living\ Room Hall Bedroom).each do |e|
	Room.create(name: e)
end

puts 'created rooms'
Category.destroy_all
%w( Heating Audio Alarm Lighting).each do |e|
	Category.create(name: e)
end
puts 'created categories'

User.destroy_all
User.create!(email: 'robert.skorupski@gmail.com', password: '123', password_confirmation: '123')
puts 'created users'
RoomCategory.destroy_all
Room.all.each do |room|
	room.categories << Category.where(name: 'Lighting').first
end
Device.destroy_all
RoomCategory.all.each do |rc|
	rc.devices << Device.create(name: 'main light')
end

audio_cat = Category.where(name: 'Audio').first
heating_cat = Category.where(name: 'Heating').first
hall = Room.where(name: 'Hall').first
bedroom = Room.where(name: 'Bedroom').first
bedroom.categories << audio_cat
bedroom.categories << heating_cat
hall.categories << audio_cat
grzejnik = Device.create(name: 'Grzejnik')
stereo = Device.create(name: 'sprzęt grający')
stereo2 = Device.create(name: 'głośniki')

bedroom.room_categories.where(category_id: audio_cat.id).first.devices << stereo
bedroom.room_categories.where(category_id: heating_cat.id).first.devices << grzejnik
hall.room_categories.where(category_id: audio_cat.id).first.devices << stereo2