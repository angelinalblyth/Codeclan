var buttonClicked = 0;

var handleButtonClick = function(){
  buttonClicked ++;
  var pTag = document.querySelector('#button-result');
  pTag.innerText = "Woa dude, I totally got clicked " + buttonClicked + " times!";
}

var handleKeyPress = function(){
  var pTag = document.querySelector('#text-result');
  pTag.innerText = this.value;

//Dont need to do the below as we have already selected the input so we can just call this.value like on the above line.
  // var input = document.querySelector('input');
  // pTag.innerText = input.value;
}

var handleSelectChanged = function(){
  console.log(event);
  var pTag = document.querySelector('#select-result');
  pTag.innerText = this.value + ". Excellent!";
}

var app = function(){

  var button =  document.querySelector('button');
  button.addEventListener('click', handleButtonClick);

  var input = document.querySelector('input');
  input.addEventListener('keyup', handleKeyPress);

  var select = document.querySelector('select');
  select.addEventListener('change', handleSelectChanged);

}

window.addEventListener('load', app);
