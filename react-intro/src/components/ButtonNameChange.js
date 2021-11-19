

export const ButtonNameChange = (props) => {
    const handleForm = (e) => {
        e.preventDefault();//stops the log from refreshing the page and erasing the data colected
        console.log(e)
        const newName = e.target.newName.value;//the target is the form, e.target is a reference to the form; [0] input newName [1] submit button
        //this line makes newName = whatever-input-passed-into-the-form
        console.log(newName);
        props.changeName(newName);
    }
    return(
        <form onSubmit={handleForm}>
            <div className="mb-3">
                <label htmlfor="newName" className="form-label">New Name</label>
                <input type="text" className="form-control" id="newName" value={props.name} />
            </div>
            <input type='submit' value='Submit' className='btn btn-secondary' />
            
        </form>

    )
}