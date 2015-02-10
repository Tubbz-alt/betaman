#!/usr/bin/env script/rails runner
require 'csv'
begin
  # Login to any beta hosted at Novell
  beta1 = Beta.find(1)
  users = beta1.users.external
  CSV.open("external.csv","wb",{:col_sep => "|"}) do |csvfile|
    csvfile << [ "Name","Company", "Email" ]
  users.each do |user|
    if user.company
      company = user.company.name
    else
      company = ''
    end
    csvfile << [ user.full_name, company, user.email ]
  end
  end
end
