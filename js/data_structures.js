// var blue_array = ["sky blue", "teal", "navy blue" , "barbie pink"];

// blue_array.push("red");

// console.log(blue_array);

// var name_array = [ "lucky", "stumpy" , "wizard of oz" , "aladdin"];

// name_array.push("queenie");

// console.log(name_array);

// // var horse = {color: blue_array, name: name_array};

// for (var i = 0; i < name_array.length; i++){
//     console.log("name and color: " + name_array[i], blue_array[i]);
// };
// horse.push(blue_array[1],name_array[1]);
// console.log(horse);
var inventory = [];
// created new 'car' object
var car = {
  car_class: 'SUV',
  color: 'black',
  automatic: true
};

//  constructor function for a car.

function carAdd(classCar, clr, transmission) {
 this.classCar = classCar;
 this.clr = clr;
 this.transmission = transmission;
 // car_add.push 
 inventory.push({car_class: classCar, color: clr, automatic: transmission });
 car.push({car_class: classCar, color: clr, automatic: transmission });
}; // function does NOT end with semicolon
// person.push({age: 35, name: "John Doe"}); // Array now contains 1 item
carAdd('convertable', 'green', false);
console.log(car);
console.log(inventory);