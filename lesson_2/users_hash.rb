class Users

EMAILS = [
 "lou.hand@mohr.name", "sigmund@schamberger.org", "clement@kreigerbeer.co",
 "marcus_strosin@nienow.org",
 "levi.kuhn@tremblay.info", "arlo@blickgrant.name", "jonathon@rath.co",
 "kailee.olson@quigley.org", "alaina@renner.net", "dylan@mclaughlin.net",
 "luna_hyatt@ritchiecronin.name", "amie_blick@kiehn.info", "carolina@bechtelargleichner.name",
 "saul_heaney@heathcote.com", "dell_tromp@kuvalisfunk.io", "lexie.hyatt@okuneva.com",
 "marquise@oconnerbailey.name", "adah@hauckspencer.info", "gilberto@cronin.name",
 "dock.braun@bins.com"
]

AGES = [
  30, 14, 30, 27, 23, 17, 25, 22, 24, 13, 27,
  15, 22, 13, 19, 20, 16, 10, 21, 25
]

NAMES = [
  "Michel", "Reagan", "Annabelle", "Chanelle", "Jennyfer", "Adonis",
  "Vidal", "Lera", "Aurore", "Garrett", "Vergie", "Lauryn", "Paxton",
  "Osborne", "Clinton", "Karson", "Ellie", "Hermann", "Else", "Otilia"
]

	def user_hash
	  users = {}
	  for i in 0..EMAILS.length - 1
		users[EMAILS[i]] = AGES[i].to_s + " " + NAMES[i].to_s
	  end
	  return users
	end

	def output_users_over_19
		return user_hash.select { |key, value| value.to_i > 19 }
	end

	def sort_by_name
		user_hash.sort_by(&:last).to_a
		
	end

end

a = Users.new
puts a.sort_by_name

