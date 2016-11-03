jones = "every man"

post = {
  
  name:  "Dave",
  last: "Smithson",
  "over_18"=> true,
  years: 4,
  additional: jones,
}
 post[:date] = "02/05/2016"
p post


susan= post[:name] + post[:last]
p susan