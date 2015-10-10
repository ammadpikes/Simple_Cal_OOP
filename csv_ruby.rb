#! usr/bin/ruby -w

require 'csv'

class CSVReadWrite

def print_csv
  read_csv

  for row in @data
    puts row.inspect
  end

end

  def read_csv 
    @data = CSV.read("sample_data.csv")
  end

  private :read_csv

end


option = 0 

puts "CSV Handling In Ruby"
puts "--------------------"

while option!=1 || option!=2 do

  print "\nPlease Enter 1 to Read and 2 To Write CSV : "
  option = gets.to_i

  if option == 1
    csv = CSVReadWrite.new
    csv.print_csv
    break
  elsif option == 2

    break
  else
    print "Invalid Option!"
  end

end










