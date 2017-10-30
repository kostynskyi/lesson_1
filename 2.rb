names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]
hash = {}


names.each do |value|   
array = value.split(" ")
array.delete_if{|i| i == 'Mrs.' || i == 'Miss' || i == 'Dr.' || i =='Jr.'}
first_latter = array.map { |e| e[0] }
hash[first_latter[0][0]] = first_latter[1][0]
end
p hash