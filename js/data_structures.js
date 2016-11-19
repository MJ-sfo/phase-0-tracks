var blue_array = ["sky blue", "teal", "navy blue" , "barbie pink"];
blue_array.push("red");
console.log(blue_array);

var name_array = [ "lucky", "stumpy" , "wizard of oz" , "aladdin"];
name_array.push("queenie");
console.log(name_array);

for (var i = 0; i < name_array.length; i++){
    console.log("name and color: " + name_array[i], blue_array[i]);
};


// Tried with Noelle to create a hash-like object and push new info into the object.  could not push except into arrays.
// // created new 'car' object
// var car = {
//   car_class: 'SUV',
//   color: 'black',
//   automatic: true
// };
console.log("---------------------");

// now will try by making car in two arrays
var  car_class = ['SUV'];
var  color = ['black'];
var  automatic = [true];
function carAdd(classCar, clr, transmission) {
   // car_add.push 
  car_class.push(classCar);
  color.push(clr);
  automatic.push(transmission);
} // function does NOT end with semicolon
carAdd('convertable', 'green', false);
console.log("The types of cars we have:" + car_class);
carAdd('mini', 'red', true);
carAdd('limo', 'white', true);

for (var i = 0; i < car_class.length; i++){
    if (automatic[i]) {
      console.log("This car is a " + color[i] + " automatic " + car_class[i]);
    } else {
      console.log("This car is a " + color[i] + " standard " + car_class[i]);
    }    
};
