require 'pry'

def pigeon_names(pigeon_data)
  pigeon_data[:gender][:male] + pigeon_data[:gender][:female]
end


def pigeon_colors(pigeon_data, pigeon_list)
  colors = pigeon_data[:color]
  colors.each do |colorname, pigeons|
    pigeons.each do |pigeon|
      pigeon_list[pigeon][:color] << colorname.to_s
    end
  end
  pigeon_list
end

def pigeon_genders(pigeon_data, pigeon_list)
  genders = pigeon_data[:gender]
  genders.each do |m_f, pigeons|
    pigeons.each do |pigeon|
      pigeon_list[pigeon][:gender] << m_f.to_s
    end
  end
  pigeon_list
end

def pigeon_lives(pigeon_data, pigeon_list)
  lives = pigeon_data[:lives]
  lives.each do |location, pigeons|
    pigeons.each do |pigeon|
      pigeon_list[pigeon][:lives] << location.to_s
    end
  end
  pigeon_list
end


def nyc_pigeon_organizer(pigeon_data)
# write your code here!
  pigeon_list = {}
  names = pigeon_names(pigeon_data)
  names.each do |pigeon|
    pigeon_list[pigeon] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end
  pigeon_list = pigeon_colors(pigeon_data, pigeon_list)
  pigeon_list = pigeon_genders(pigeon_data, pigeon_list)
  pigeon_list = pigeon_lives(pigeon_data, pigeon_list)
  pigeon_list
end
