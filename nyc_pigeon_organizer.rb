


def pigeons_hash_by_name(pigeon_data)
  all_pigeon_names = pigeon_data.collect do |attribute, attribute_hash|
      attribute_hash.collect do |spec_attribute, names|
        names.each do |name|
          name
      end
    end
  end
  all_pigeon_names = all_pigeon_names.flatten.uniq
  pigeon_list = {}
  all_pigeon_names = pigeon_names(pigeon_data)

  all_pigeon_names.each do |name|
    pigeon_list[name] = {}
  end

  all_pigeon_names.each do |pigeon|
      pigeon_data.each do |attribute, spec_attribute|
        spec_attribute.each do |data, names|
          if attribute == :color
            if names.include?(pigeon)
              if pigeon_list[pigeon][attribute].nil?
              pigeon_list[pigeon][attribute]=[data.to_s]
              else
              pigeon_list[pigeon][attribute]<<data.to_s
              end
            end
          else
            if names.include?(pigeon)
              if pigeon_list[pigeon][attribute].nil?
              pigeon_list[pigeon][attribute] = data.to_s
              end
            end
         end
      end
    end
  end
  pigeon_list
end
