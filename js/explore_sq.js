function reverse(str) {
  var rev_string = "";
  for (var i = str.length - 1; i > -1; i += -1) {   
    console.log(str[i]);  
    rev_string = rev_string + str[i];
  }
  // console.log(rev_string);
  console.log("-------")
  return rev_string;
}

reverse("Happy test!") 

// q5 - Add driver code that prints the variable if some condition is true.
var long_text = reverse("In the beginning the word was with god and the word was god");
if (long_text.length >10) {
  console.log("The reverse is: " + long_text);
}
 