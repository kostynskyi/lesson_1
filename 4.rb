names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

names.each do |value|   
array = value.split(" ")
array.delete_if{|i| i == 'Mrs.' || i == 'Miss' || i == 'Dr.' || i =='Jr.' || i == "V"}
replace_names = array.insert(0, array.pop)
p replace_names
end