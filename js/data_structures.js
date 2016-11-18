var blue_array = ["sky blue", "teal", "navy blue" , "barbie pink"];

blue_array.push("red");

console.log(blue_array);

var name_array = [ "lucky", "stumpy" , "wizard of oz" , "aladdin"];

name_array.push("queenie");

console.log(name_array);

// var horse = {color: blue_array, name: name_array};

for (var i = 0; i < name_array.length; i++){
    console.log("name and color: " + name_array[i], blue_array[i]);
};
// horse.push(blue_array[1],name_array[1]);
// console.log(horse);