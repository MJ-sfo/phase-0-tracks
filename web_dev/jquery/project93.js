// alter http://www.w3schools.com/jsref/dom_obj_all.asp


function change_tbody() {
  var bodies = document.getElementsByTagName('body');
  var body = bodies[0];

  var labels = document.getElementsByTagName('label');
  var label = labels[0];

  var buttons = document.getElementsByTagName('button');
  var button = buttons[0];

  body.background = "blue"; // shows up on "inspect", but don't see any changes
  body.clientLeft = 100;    

  label.innerText = "FuLl NaMe PlEaSe";  // works!

  button.draggable = "true";  // works!
  button.innerText = "I've changed the button text !!!"; // works!

}
change_tbody();

// OK, i did not work with w3schools - so worked on simple webpage example-form.html, the linked that html to this page