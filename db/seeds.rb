require "csv"

companies_csv = CSV.readlines("db/companies.csv")
companies_csv.shift
companies_csv.each do |row|
  Company.create(code: row[1], name: row[2], industry: row[3], foundation: row[4], sales: row[5], profit: row[6], kessan: row[7],answer1: row[8], answer2: row[9])
end
