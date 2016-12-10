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



// Release 3: Research on Your Own
// 1- If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)
// Googelling for answers, the simplest method (or easiest to understand):
// var obj = {
//     first: "John", 
//     last: "Doe"
// };

// Object.keys(obj).forEach(function(key) {
//     console.log(key, obj[key]);
// });


// 2- Are there advantages to using constructor functions to create objects? Disadvantages?
// A constructor is useful when you want to create multiple similar objects with the same properties and methods.

// A constructor function is used with the new keyword 
// var objFromConstructor = new ConstructorFunction();
// Does not need to return a new instance of some object. 

// A factory function is called like a "regular" function:
// var objFromFactory = factoryFunction();   // please notice, no 'new'
// But need to return a new instance of some object.  

// EXAMPLES:
// function ConstructorFunction() {
//    this.someProp1 = "1";
//    this.someProp2 = "2";
// }
// ConstructorFunction.prototype.someMethod = function() { /* whatever */ };

// function factoryFunction() {
//    var obj = {
//       someProp1 : "1",
//       someProp2 : "2",
//       someMethod: function() { /* whatever */ }
//    };
//    // other code to manipulate obj in some way here
//    return obj;
// }

