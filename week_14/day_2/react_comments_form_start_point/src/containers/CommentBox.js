import React from 'react'
import CommentList from '../components/CommentList.js'
import CommentForm from '../components/CommentForm.js'

class CommentBox extends React.Component {

  constructor(props) {
    super(props)
    this.handleCommentSubmit = this.handleCommentSubmit.bind(this);
    this.state = {
      data: [{ id:1, author:'Beth', text:'I love cats!' }]
    }
  }

  handleCommentSubmit(comment){
    comment.id = Date.now();
    const newComments = this.state.data.concat([comment])
    this.setState({data: newComments})
  }

  render() {
     return (
      <div className="comment-box">
        <CommentForm onCommentSubmit={this.handleCommentSubmit}/>
        <h2>Add a Comment</h2>
        <CommentList data={this.state.data} />
      </div>
    )
  }

}

export default CommentBox;
