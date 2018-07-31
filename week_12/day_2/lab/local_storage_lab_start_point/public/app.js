var init = function () {
  var button = document.querySelector('button');
  button.addEventListener('click', handleButtonClick);

  var todosArray = JSON.parse(localStorage.getItem('todoList')) || [];
  populate(todosArray);
}

var populate = function (todos) {
  // this function needs to:
  // - loop through the array of todos, invoking addItem() for each todo item

  for( var item of todos){
    addItem(item);
  }
}

var addItem = function (item) {
  var ul = document.querySelector('#todo-list');
  // this function needs to:
  // - create an li element containing the string 'item'
  // - append the li to the "todo-list" ul

  var newItem = document.createElement('li');
  //console.log(newItem);
  newItem.innerText = item;
  ul.appendChild(newItem)
}

var handleButtonClick = function () {
  // this function needs to:
  // - get hold of the input box's value
  // - append it to the "todo-list" ul by invoking addItem()
  // - add it to local storage by invoking save()

  var newItemInput = document.querySelector('#new-item');
  var inputValue = newItemInput.value;

  addItem(inputValue);
  save(inputValue);


}

var save = function (newItem) {
  // this function needs to:
  // - get the data back from local storage and parse to an array
  // - add the newItem to the array
  // - stringify the updated array
  // - save it back to localstoage

  var jsonString = JSON.stringify(newItem)
  localStorage.setItem('item', jsonString);

  // var jsonString = localStorage.getItem(newItem);
  // var todoList = [];
  // todoList.push(jsonString);







}

window.addEventListener('load', init);
