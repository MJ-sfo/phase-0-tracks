var bodies = document.getElementsByTagName('body');

var body = bodies[0];



function addBorder () {
	var pic = document.getElementById('image');
	pic.style.border = "3px solid red";
}

var pic = document.getElementById('image');
pic.addEventListener("click", addBorder);


// // CREATING ELEMENTS
function make_red () {
	var header = document.getElementById('red');
	header.style.color = "red";
}

function make_green () {
	var header = document.getElementById('red');
	header.style.color = "green";
}

var header = document.getElementById('red');
header.addEventListener("mouseover", make_red);
header.addEventListener("mouseout", make_green);



// var newPar  = document.createElement('p');

// var paraText = document.createTextNode("This is the added Paragraph text! by javascript");

// newPar.appendChild(paraText);

// body.appendChild(newPar);