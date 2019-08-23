def nyc_pigeon_organizer(data)
rearranged = { }
data.each do |key, value|
	value.each do|attribute, names|
		names.each do |bird_name|
		 if !rearranged.key?(bird_name)
		    rearranged[:"#{bird_name}"] ={color: "", gender: "", lives: ""}
		 end
		end
	end
end
rearranged
end
