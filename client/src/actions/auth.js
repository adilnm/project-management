export default function (user) {
    return dispatch => {
        fetch('http://localhost:3001/users', {
            method: 'POST',
            credentials: 'include',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({user})
        })
    }
}