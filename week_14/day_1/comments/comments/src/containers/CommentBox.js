import React, { Component } from 'react';
import CommentList from '../components/CommentList.js'

class CommentBox extends Component{
  constructor(props){
    super(props);
    this.state = {
      data: [{
        id: 1,
        author: "Robocop",
        text: "Your move creep"
      },
    {
      id: 2,
      author: "Archer",
      text: "Are we not doing Phrasing?"
    }]
    }
  };
  render(){
    return <div className = "CommentBox">
      <h2>Comment List</h2>
      <CommentList data={this.state.data}/>
    </div>
  }
}

export default CommentBox;
