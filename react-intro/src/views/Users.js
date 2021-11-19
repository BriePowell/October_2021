import React, {Component} from "react";

export default class Users extends Component {
    constructor(props){
        super(props);

        this.state = {
            students: []
        }
    }
    componentDidMount(){
        fetch('https://kekambas-bs.herokuapp.com/kekambas')
            .then(res => res.json())
            .then(data => this.setState({
                users: data
            }))
    }

    render(){
        return(
        <div>
            <h1 className="text-center"> Users </h1>
            <ul cassName="list-group"> 
                {this.state.student.map((student, idx) => <li key={idx} className="list-group-item"> {student.first_name} {student.last_name} </li>)}
            </ul>
        </div>
        )
    }
}