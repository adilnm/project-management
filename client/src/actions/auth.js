export default function (user) {
    return dispatch => {
        fetch('/users', {
            method: 'POST',
            credentials: 'include',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({user})
        })
        .then(res=>res.json())
        .then(user=>{
            console.log(user)
        })
    }
}