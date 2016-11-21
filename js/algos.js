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
}   // end of functio

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

// Release 2: Generate Random Test Data
// Generate Random letter - get Random number 0-25, pull out of array of alphabet
// Generate Random number 1-10 - this is for loop, to build Random word out of Random letters 1-10 characters
// build function that accepts number parameter.
// creates new array, null length
// if parameter > 0, goes into loop number of times of parameter
//   each loop - builds Random word of Random length
// push new word into array

function add_to_array(num_items)  {
  
  // var rand_num = Math.floor(Math.random()*25); // picks random number 0-25
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w', 'x','y','z'];
  // console.log(rand_num);
  // console.log("the random number "+ rand_num + " is equal to letter: " + alphabet[rand_num]);
  // console.log("-------------");
  // var num_loop = Math.floor(Math.random()*9);   // random number 0-9
  // var word_build = "";
  var arr_build = [];
 
 for (i = 0; i <num_items; i++) {
      // this loop builds rand word with random number of letters
    var num_loop = Math.floor(Math.random()*9);   // random number 0-9
    var word_build = "";
    // var arr_build = [];
    
    for(i=0; i<num_loop; i++){
      var rand_num = Math.floor(Math.random()*25); // picks random number 0-25
      word_build = word_build + alphabet[Math.floor(Math.random()*25)];
      console.log("the word is now: "+ word_build + ", for loop: "+ i);
    };
    
    arr_build = arr_build.concat(word_build);
    console.log("the array now contains: "+ word_build);
    console.log("------");
  };      //  end for-loop that builds long array
  console.log("------");
  console.log("------");
  console.log("The final array is: ");
  console.log(arr_build);
}   // end of function

add_to_array(3);