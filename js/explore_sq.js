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
function Car(horsepower, torque, convertable) {
  
  console.log("Our new car:", this);
  
  this.horsepower = horsepower;
  this.torque = torque;
  this.convertable = convertable;
  this.vroom = function() { console.log("*vroom-vroom*");};
  
  
  console.log("car initialization complete!!");
}
var new_car = new Car(375, 300, true);
console.log("this is the the car's horsepower: " + new_car.horsepower + ", and here is it's torque: " + new_car.torque);
if (new_car.convertable) {
  console.log("This is a convertible!");
}
new_car.vroom();