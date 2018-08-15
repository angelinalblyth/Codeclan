import React from 'react';

class PiggyBank extends React.Component {

constructor(props){
  super(props);
  this.state = {
    total: 0
  }
  this.deposit = this.deposit.bind(this);
  this.withdraw = this.withdraw.bind(this);
}

// componentWillMount(){
//   console.log('component will mount');
//   const button = document.querySelector('button');
//   console.log('Button:', button);
// }
//
// componentDidMount(){
//   console.log('the component did mount');
//   const button = document.querySelector('button');
//   console.log('button:', button);
// }


//Hard way
// componentDidMount(){
//   const request = new XMLHttpRequest();
//   request.open('GET', 'https://restcountries.eu/rest/v2/all')
//   request.addEventListener('load', function(){
//     console.log(this.responseText);
//   })
//   request.send();
// }

//easy way to pull data down from an API. Called promises
//tidier, easier to follow, dont need to worry about callbacks.
componentDidMount(){
  fetch("https://restcountries.eu/rest/v2/all")
  .then(responseText => responseText.json())
  .then(countriesData => console.log(countriesData))
}

componentDidUpdate(prevProps, prevState){
  //Dont set state in here, it will cause an infinte loop
  console.log("Component did update");
  console.log({prevProps});
  console.log({prevState});
}

deposit(){
  this.setState(prevState => {
    return {total: prevState.total + this.props.depositAmount}
  })
}

withdraw(){
  this.setState(prevState =>{
    return{total: prevState.total - this.props.depositAmount}
  })
}

  render(){
    return(
    <div className="bank-box">
      <h1>{this.props.title}</h1>
      <p>My owner is {this.props.owner}</p>
      <p>I contain £{this.state.total}</p>
      <button onClick={this.deposit}>Add</button>
      <button onClick={this.withdraw}>Withdraw</button>
    </div>
    )

  }
}

export default PiggyBank;
