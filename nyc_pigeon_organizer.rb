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

  birds.length.times do |bird_index|
  	color_keys.length.times do |color_index|
  		if data[:color][:"#{color_keys[color_index]}"].include?("#{birds[bird_index]}")
  			rearranged[:"#{birds[bird_index]}"][:color] += "#{data[:color][:"#{color_keys[color_index]}"]}"
  		end
  	end
  	gender_keys.length.times do |gender_index|
  		if data[:gender][:"#{gender_keys[gender_index]}"].include?("#{birds[bird_index]}")
  			rearranged[:"#{birds[bird_index]}"][:gender] += "#{data[:gender][:"#{gender_keys[gender_index]}"]}"
  		end
  	end
  	lives_keys.length.times do |lives_index|
  			if data[:lives][:"#{lives_keys[lives_index]}"].include?("#{birds[bird_index]}")
  				rearranged[:"#{birds[bird_index]}"][:lives] += "#{data[:lives][:"#{lives_keys[lives_index]}"]}"
  		end
  	end
  	rearranged
  end
end
