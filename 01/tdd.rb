class StringChanger
  def reverse_and_save(string_to_reverse)
    #'gnirts elpmaxe'
    string_to_reverse.reverse
  end
end

describe StringChanger do
  it 'reverses strings' do
    string_changer = StringChanger.new
    reversed_string = string_changer.reverse_and_save('example string')
    expect(reversed_string).to eq 'gnirts elpmaxe'
  end
end

# rspec tdd.rb --format documentation
# instalacja Ruby poprzez rvm oraz:
# sudo apt install ruby-rspec-core
# gem install rspec
