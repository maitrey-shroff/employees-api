json.id employee.id
json.first_name employee.first_name
json.last_name employee.last_name
# json.city employee.addresses.first.city

json.addresses employee.addresses do |address|
  json.address1 address.address1
  json.address2 address.address2
  json.city address.city
  json.state address.state
  json.zip address.zip
end