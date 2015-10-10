#! usr/bin/ruby -w

require 'csv'


CSV.foreach("sample_data.csv") do |row|

  print row

end