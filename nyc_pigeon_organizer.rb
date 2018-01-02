def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |category, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        if !pigeon_list.include?(pigeon)
          pigeon_list[pigeon] = {}
        end
        if category != :color
          pigeon_list[pigeon][category] = option
        elsif pigeon_list[pigeon][category] == nil
          pigeon_list[pigeon][category] = [option]
        else
          pigeon_list[pigeon][category] << option
        end
      end
    end
  end
  pigeon_list
end
