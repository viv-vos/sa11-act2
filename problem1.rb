def extract_hashtags(text)
  pattern = /#.+/
  hashtags = text.scan(pattern)
  hashtags.flatten
end

p extract_hashtags("Love this #beautiful day! #sunny")


def valid_password?(password)
  pattern = /^[a-zA-Z0-9]{8,16}$/
  password.match?(pattern)
end

p valid_password?("Passw0rd")
p valid_password?("pass")


def find_numbers(text)
  pattern = /\d*\.\d+|\d/
  text.scan(pattern)
end

p find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")



def valid_date?(date)
  pattern = /^\d{4}-[0-1][0-9]-[0-3][0-9]$/
  date.match?(pattern)
end

p valid_date?("2023-03-15")
p valid_date?("15-03-2023")


def parse_log_entry(log)
  pattern = /(ERROR|INFO|WARN)+(.*)/
  match = log.match(pattern)
  [match[1], match[2]] if match
end

log_entry = "ERROR: Disk space low"
puts parse_log_entry(log_entry).inspect
