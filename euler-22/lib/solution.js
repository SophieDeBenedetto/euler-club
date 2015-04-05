var ALPHAHASH = {};

var array = ("ABCDEFGHIJKLMNOPQRSTUVWXYZ").split("");

array.forEach(function(letter, i){
  
  ALPHAHASH[letter] = (i+1);

});

var file = new FileReader();
debugger;
file.readAsText();



// var reader = new FileReader();
// reader.onload = function(event) {
//     var contents = event.target.result;
//     console.log("File contents: " + contents);
// };

// reader.onerror = function(event) {
//     console.error("File could not be read! Code " + event.target.error.code);
// };

// reader.readAsText(file);