names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

splited_names = names.map{|name| name.split(" ")}
array_with_names = splited_names.flatten
first_letter = array_with_names.map{|x| x[0]}
uniq_first_latter = first_letter.uniq
p uniq_first_latter