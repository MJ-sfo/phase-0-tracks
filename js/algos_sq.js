// Release 0: Find the Longest Phrase
// pseudocode:
// write a function
// create length-array - carry text, value of length
// iterate through array - if length of text longer than previous, save in length-array
// print answer
// close function
// driver - var several test-array's
// call function with test-array's

function longest_phrase(all_texts) {
  var record = ["", 0];
  for (i=0; i<all_texts.length; i +=1) {
    if (all_texts[i].length >= record[1]) {
      record[0] = all_texts[i];
      record[1] = all_texts[i].length;
    }
  }
  return record[0];
}

var test_array = ["miss", "Happy Days", "simmon", "This is the day the Lord has made"];
var test2 = ["Mom", 'Dad'];
var test3 = [""];
var text4 = ['nobody here but us chickens',' yes', 'today'];
console.log("The longest text is: " + longest_phrase(test_array));
console.log("The longest text is: " + longest_phrase(test2));
console.log("The longest text is: " + longest_phrase(test3));
console.log("The longest text is: " + longest_phrase(text4));


// Release 1: Find a Key-Value Match
// pseudocode:
// write function that takes two objects 
// iterate through first object - in each cycle, iterate through second object,
// see if share at least one key-value pair - if so return true
// else, return false

function key_value(object1, object2) {
  var match = false;
  console.log("-----------");
    for(var index in object1) {  // this is how to iterate through object/hash in JS
    for(var i2 in object2) {
      if ((object1[index] == object2[i2]) && (index == i2)) {
        console.log("object1.'" + index + "' is: " + object1[index] );
        console.log("object2.'" + i2 + "' is: " + object2[i2] );
        console.log("match is " + object1[index] +" = " + object2[i2] + "; and " + index + " = " + i2);
        match = true;
      }  // if equal
    }
      }
  return match;
} // function key_value

var test_array = {name: "Steven", age: 54};
var test2 = {name: "Tamir", age: 54};
var test3 = {name: "Tamir", age: 19};
var text4 = {name: "Dave", age: 15};
console.log(key_value(test_array, test2));
console.log(key_value(test_array, test3));
console.log(key_value(test3, test2));
console.log(key_value(test_array, text4));



// Release 2: Generate Random Test Data
// pseudocode:
// 1 - Write a function that takes an integer for length
// define empty array
// create loop - length = integer
// create loop - random # cycles, up to 10
// use variable = Math.floor(Math.random()*10);   // random number 0-9
// use var charset = "abcdefghijklmnopqrstuvwxyz";
// add random letter to variable
// end random loop
// enter random word into array
// end integer loop

// 2 - do loop 10 times
// get array from function from Release 2
// print array
// send to function longest_phrase
// print 
