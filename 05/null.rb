# Hash#dig
user = {
  user: {
    address: {
      street1: '123 Main street'
    }
  }
}

user.dig(:user, :address, :street1) # => '123 Main street'

# Array#dig
results = [[[1, 2, 3]]]
results.dig(0, 0, 0) # => 1
