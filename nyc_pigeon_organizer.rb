require 'pry'

def nyc_pigeon_organizer(data)
  #Create new hash for pigeon descriptions
  id = {}
  #We need to isolate the name of the pigeons for the key value, so we must tunnel through the hash
  #The first hash is color. Within the color hash is a list of colors
  data.each do |first, color_list|
    #Within the color list are individual hashes representing lists the first color and the names of the pigeons with that color
    color_list.each do |color, name_array|
      name_array.each do |name|
        id[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  #Create a variable for the attributes of the pigeosn
  pigeon_list = id.keys
  #For each color, list the names of the pigeons with corresponding color
  data[:color].each do |pigeon_color, pc_name_list|
    #Iterate through the list of names(name) for each pigeon(pigeon_name)
    pc_name_list.each do |pc_pigeon_name|
      #The next lines of code will create the keys for id (Master-Pigeon-List)
      pigeon_list.each do |pigeon|
        if pc_pigeon_name === pigeon
          id[pigeon][:color] << pigeon_color.to_s
        end

      end
#ends after first color finished
    end
#Colors finished
  end
data[:gender].each do |gender, kind|
  kind.each do [pigeon_list]
    pigeon_list.each do |pigeon_name|
      pigeon_name.each do |pigeon|
      if pigeon_name === pigeon
        id[pigeon][:gender] << gender.to_s
      end
      binding.pry

    
  end
end

end
