describe StringChanger do
  it 'reverses strings' do
    string_changer = StringChanger.new
    reversed_string = string_changer.reverse_and_save('example string')
    expect(reversed_string).to eq 'gnirts elpmaxe'
  end
end

# rspec string_changer_spec.rb --format documentation

