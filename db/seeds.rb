require "csv"

companies_csv = CSV.readlines("db/companies.csv")
companies_csv.shift
companies_csv.each do |row|
  Company.create(name: row[1], code: row[2], foundation: row[3], industry: row[4], answer1: row[5], answer2: row[6], sales: row[7],profit: row[8])
end
