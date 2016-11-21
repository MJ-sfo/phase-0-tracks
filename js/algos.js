// Release 0: Find the Longest Phrase
// build function that takes array as parameter
// find length of array
// build vars for length of each item and the index in array
// check the array isn't empty
// if only one element, work is done
// build loop - cycles number of items minus one
// each loop - compare next item for length.  if longer than record, record index
// after loop, return result of longest item
// driver code, that tests several arrays

function longest_word(array_list) {
  console.log("the array contains: " + array_list);
  console.log("this array contains "  + array_list.length + " items.");
  var thing = array_list[0];
  var item_length = array_list[0].length;
  console.log("the first item " + thing + " is " + item_length + " characters long." )
  
    if (array_list.length > 1) {
      for (i = 1; i < array_list.length; i++) {
        if (item_length < array_list[i].length ) {
          item_length = array_list[i].length;
          thing = array_list[i];
        }; // end if if - only does if new item is longer
      };  // end of for loop - compare item by item
    };          // end of if condition - no comparison if array has less than two items

  console.log("the longest item " + thing + " is " + item_length + " characters long." )
  return thing;
}   // end of function

var test_array1 = [ "Sammie", "life", "Davids home" ];
var test_array2 = ["me", "he", "Jack Robertson", "I"];
var test_array3 = ["Four score and seven years ago..."]
longest_word(test_array1);
console.log("---------");
longest_word(test_array2);
console.log("---------");
longest_word(test_array3);
console.log("---------");

// Release 1: Find a Key-Value Match
// write a function that takes two objects
// i find this question  unclear. The two objects each have two items, and we test if each have an item that matches, or a key that matches?
// set value as false
// test first value of first object with first value of second object to see if equal
// do same for second item, then second item of first object.
// if ever find match, set value to true
// write driver code to test
function find_keyvalue_match(hash1, hash2) { 
  var doesitmatch = false;
  return doesitmatch;
}
Object1 = {name: "Steven", age: 54};
Object2 = {name: "Tamir", age: 54};
console.log("the answer to finding a match is: " + find_keyvalue_match(Object1, Object2));

// Release 2: Generate Random Test Data
// Generate Random letter - get Random number 0-25, pull out of array of alphabet
// Generate Random number 1-10 - this is for loop, to build Random word out of Random letters 1-10 characters
// build function that accepts number parameter.
// creates new array, null length
// if parameter > 0, goes into loop number of times of parameter
//   each loop - builds Random word of Random length
// push new word into array

// part 2
// set function to 10, make function equal to variable
// set new variable - first function with array received from last function
// print final result

function add_to_array(num_items)  {  
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w', 'x','y','z'];
  var arr_build = []; 
  // this loop builds rand word with random number of letters
 for ( index = 0; index <num_items; index++) {
    var num_loop = Math.floor(Math.random()*9);   // random number 0-9
    var word_build = "";
    for(i=0; i<num_loop; i++){
      var rand_num = Math.floor(Math.random()*25); // picks random number 0-25
      word_build = word_build + alphabet[Math.floor(Math.random()*25)];
    };    //  end loop  that builds random word
    
    arr_build = arr_build.concat(word_build);
  };      //  end for-loop that builds long array
  console.log("We built array of: " + arr_build);
  console.log("------");
  return arr_build;
}   // end of function

console.log("------");
var build_array = add_to_array(10);
var longest_word_in_array = longest_word(build_array);
console.log("The longest random word in array is: " + longest_word_in_array);