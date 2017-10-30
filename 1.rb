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
hash[array[0]] = array[1]
end
p hash