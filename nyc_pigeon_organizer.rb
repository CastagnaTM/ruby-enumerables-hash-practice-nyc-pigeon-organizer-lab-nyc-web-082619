def nyc_pigeon_organizer(data)
  rearranged = { }
  data.each do |key, value|
  			value.each do|attribute, names|
  						names.each do |bird_name|
  		 if !rearranged.key?(bird_name)
  		    rearranged[:"#{bird_name}"] = {color: [], gender: [], lives: []}
  		 end
  		end
  	end
  end

  birds = rearranged.keys.to_a
  color_keys = data[:color].keys.to_a
  gender_keys = data[:gender].keys.to_a
  lives_keys = data[:lives].keys.to_a


bird_index = 0
while bird_index < birds.length do
	color_index = 0
	while color_index < color_keys.length do
		if data[:color][:"#{color_keys[color_index]}"].include?("#{birds[bird_index]}")
			rearranged[:"#{birds[bird_index]}"][:color].push("#{color_keys[color_index]}")
		end
		color_index += 1
	end
	bird_index += 1
end
rearranged
end
