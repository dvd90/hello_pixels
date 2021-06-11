require 'csv'
require_relative '../models/Pixel'

def parse_csv
    arr = []
    CSV.foreach(File.dirname(__FILE__) + '/../population/first_pixels.csv') do |row|
        arr << Pixel.new(row[0].to_i, row[1].to_i, row[2].to_i)
    end
    arr
end
