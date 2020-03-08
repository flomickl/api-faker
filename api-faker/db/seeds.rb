require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'walker1.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')

csv.each do |row|
  t = GeolifePosition.new
  t.latitude = row['latitude']
  t.longitude = row['longitude']
  t.nonsens  = row['nonsens']
  t.altitude  = row['altitude']
  t.timestring  = row['timestring']
  t.date_string  = row['date_string']
  t.time_string  = row['time_string']
  t.uid  = row['uid']
  t.save
end
