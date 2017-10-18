class CountKeys
HASH = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34.5,
  :yesss => :fg, try: 30, key: 'some value',
  'yesterday1' => 34, 'yesteryear' => 2014}

  def count_of_yes_values
    key = HASH.map { |value| value.grep(/yes/) }.flatten.count
    puts key
  end
end
count = CountKeys.new
count.count_of_yes_values