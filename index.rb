# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order)
  order.each do |want| #making the order iterate
    found = ingredients.find do |arr| #if the other is found make a new array = found
      arr.find {|have| want == have} # inside the array if we what we need was found then we want it inside the array and then want will be equals to what we have in the ingredients 
    end
    return false if !found #making the if statement true means it is false to meet the conditions set for it
  end
  true
end

# example city_info hash
cities = {
  :new_york => {
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => {
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => {
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => {
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

def city_populations(cities)
  cities.sum {|city| city[:population]}
end
