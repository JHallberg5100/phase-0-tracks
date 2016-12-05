console.log("The script is running!");

function addTextElement() {
  var element = document.getElementById('about-my-pet');
  var new_p = document.createElement('p');
  var text = document.createTextNode('Phasellus nec iaculis ligula. Etiam accumsan et orci a porta. Fusce condimentum posuere risus eget viverra. In at imperdiet ex, nec scelerisque ligula. Quisque nec est hendrerit, congue metus in, sodales ipsum. Nullam id neque eu tortor finibus mattis. Nam sed ex in nisl pellentesque pharetra id sed odio. Nullam finibus, quam ac porttitor pulvinar, nisl mi tristique urna, in ultricies erat turpis at metus. Aenean sed cursus urna, a laoreet magna. Sed volutpat, orci nec congue aliquam, neque metus scelerisque mauris, quis fermentum tellus diam ac dolor. Integer hendrerit vitae tortor eu mollis. Donec porttitor porttitor lobortis. Suspendisse consectetur ligula nec velit finibus molestie.');
  new_p.appendChild(text);
  element.appendChild(new_p);
}

function changeElementColor(event) {
  event.target.style.color = 'cyan'
}


addTextElement();
var paragraphs = document.getElementsByTagName('p');
var paragraph = paragraphs[1];
console.log(paragraphs);


paragraph.addEventListener('click', changeElementColor);
