require 'uri'

def dump_uri(uri)
  puts uri.to_s
  puts "Scheme: #{uri.scheme}"
  puts "Username: #{uri.user}"
  puts "Password: #{uri.password}"
  puts "Host: #{uri.host}"
  puts "Port: #{uri.port}"
  puts "Path: #{uri.path}"
  puts "Query: #{uri.query}"
  puts "Fragment: #{uri.fragment}"
  puts "Opaque: #{uri.opaque}"
  puts ""
end

dump_uri(URI("mx:@travis:t2l.io"))
dump_uri(URI("mx:#travis:t2l.io"))
dump_uri(URI("mx:+travis:t2l.io"))

# mx:@travis:t2l.io
# Scheme: mx
# Username: 
# Password: 
# Host: 
# Port: 
# Path: 
# Query: 
# Fragment: 
# Opaque: @travis:t2l.io

# mx:#travis:t2l.io
# Scheme: mx
# Username: 
# Password: 
# Host: 
# Port: 
# Path: 
# Query: 
# Fragment: travis:t2l.io
# Opaque: 

# mx:+travis:t2l.io
# Scheme: mx
# Username: 
# Password: 
# Host: 
# Port: 
# Path: 
# Query: 
# Fragment: 
# Opaque: +travis:t2l.io
