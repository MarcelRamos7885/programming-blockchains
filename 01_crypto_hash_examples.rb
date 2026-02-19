# Examples from 01_crypto_hash.md - run with: ruby 01_crypto_hash_examples.rb

require 'digest'

puts "=== SHA256 of 'Hello, Cryptos!' ==="
puts Digest::SHA256.hexdigest( 'Hello, Cryptos!' )
#=> "33eedea60b0662c66c289ceba71863a864cf84b00e10002ca1069bf58f9362d5"

puts "\n=== More examples ==="
puts Digest::SHA256.hexdigest( 'Hello, Cryptos! - Hello, Cryptos! - Hello, Cryptos!' )
puts Digest::SHA256.hexdigest( 'Your Name Here' )
puts Digest::SHA256.hexdigest( 'Data Data Data Data' )

puts "\n=== Hash is always 64 hex chars (256 bits) ==="
puts Digest::SHA256.hexdigest( 'Hello, Cryptos!' ).length  # => 64

puts "\n=== Hex to decimal (integer) ==="
hex = Digest::SHA256.hexdigest( 'Hello, Cryptos!' )
puts hex
puts hex.to_i( 16 )

puts "\n=== Hex to binary string (base 2) ==="
puts hex.to_i( 16 ).to_s( 2 )
