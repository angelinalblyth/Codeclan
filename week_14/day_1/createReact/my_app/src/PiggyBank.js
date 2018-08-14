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
