require_relative './models/Pixel'
require_relative './utils/parse_population'


puts "Welcome to pixel world!\n"
puts "You will be able to see the wonderful creation of an image based on pixel reproduction\n\n"

pixel_population = []

print "Would you like to parse the firsts Pixels from the CSV or start with ramdom Adam & Eve?(Press y/Y to parse)\n>"
if (gets.chomp.downcase == 'y')
    pixel_population = parse_csv()
else
    adam_pixel = Pixel.new(rand(256), rand(256), rand(256))
    eve_pixel = Pixel.new(rand(256), rand(256), rand(256))

    pixel_population << adam_pixel
    pixel_population << eve_pixel
end

growth = 1

while growth == 1 do
    combinations = pixel_population.combination(2)
    combinations.each do |couple|
        new_baby = Pixel.reproduction(couple[0], couple[1])
        pixel_population << new_baby
        puts "Mazal Tov, #{new_baby} was born!\n"
    end


    puts "The pixel population is now #{pixel_population.size}\n\n"


    print "Would you like to print the list of pixels?(Press y/Y to print)\n>"
    puts pixel_population.map{ |pixel| pixel.to_s } if (gets.chomp.downcase == 'y')

    print "If you want to continue the growth press 1\n>"
    growth = gets.chomp.to_i
end
