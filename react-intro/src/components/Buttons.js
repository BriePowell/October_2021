import React, { Component } from 'react'

export default class Buttons extends Component {
    // constructor(props){
    //     console.log('Component Constructor')
    //     super(props) //this.props needs the super constructor to function
    //     this.state = {
    //         count: 0 
    //     }
    // }

    // handleClick = () => {
    //     //console.log(this.state)
    //     let newCount = this.state.count + 1 //we don't use += because we don't want to reset this.state, this.setState is diff.
    //     this.setState({
    //         count: newCount
    //     })
    // }

    render() {
        return (
            <div>
                <button className="btn btn-primary" onClick={() => this.props.incrementCount(this.props.step)}> + {this.props.step}</button> 
            </div>
        )
    }
}


//line 23: class must be className in the JS