var colors= ["green", "beige", "yellow", "light-blue"];
var names = ["Ed", "Chomper", "Blackie", "Charlie" ];
var horse_colors = {};
colors.push("Black");
names.push("Dixie");
for (var i = 0; i < names.length; i++){
  horse_colors[names[i]] = colors[i];
}
console.log(colors);
console.log(names);
console.log(horse_colors);