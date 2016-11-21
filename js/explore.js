// This is a program that will reverse all letters
// It will do this to by taking an input, and then outputting at string that is inverse
// The input and output will be different variables
// First the input will start at the last letter, and then slowly move backwards over each charater.
// That charater will be put in the first part of the output
// then after all has been added, the output will be printed.
function reverse(word){
  var output = "";
  console.log("does this thing even work")
  var count = 0;
  var i = word.length;
  console.log(i);
  while (i !== 0){
    output = output + word[i -1];
    console.log("comeon");
    i = i - 1;
  }
console.log(output);
}
reverse("Dragon");
