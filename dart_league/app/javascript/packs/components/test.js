import React from 'react';

class Test extends React.Component {
  render() {
    return(
      <div>
        Hello, I am {this.props.name}!
      </div>
    );
  }
}

export default Test;