#! usr/bin/ruby -w

require 'csv'

class CSVReadWrite

def print_csv
  read_csv

  for row in @data
    puts row.inspect
  end
  print "\n\n"

end

  def write_csv (product_squ = "", product_name = "", product_price = "", product_sale = "", product_quantity = "" )

    CSV.open("sample_data.csv","a+") do |csv_object|
      csv_object << [product_squ, product_name, product_price, product_sale, product_quantity]

    end

  end

  def read_csv 
    @data = CSV.read("sample_data.csv")
  end

  private :read_csv

end


option = 0 
product_squ, product_name, product_price, product_sale, product_quantity = ""

puts "\n\n\t\tCSV Handling In Ruby"
puts "\t\t--------------------"

while option!=1 || option!=2 do

  print "\nPlease Enter 1 to Read and 2 To Write CSV : "
  option = gets.to_i

    print "\n\n"

  if option == 1
    csv = CSVReadWrite.new
    csv.print_csv
    break
  elsif option == 2

    print "Enter Product Squ : "
    product_squ = gets.chomp.to_s
    print "Enter Product Name : "
    product_name = gets.chomp.to_s
    print "Enter Product Price : "
    product_price =gets.chomp.to_s
    print "Enter product_sales : "
    product_sale = gets.chomp.to_s
    print"Enter Product Quantity : "
    product_quantity = gets.chomp.to_s

    print "\n\n"

    csv = CSVReadWrite.new
    csv.write_csv(product_squ, product_name, product_price, product_sale, product_quantity)
    break

  else
    print "Invalid Option!"
  end

end
