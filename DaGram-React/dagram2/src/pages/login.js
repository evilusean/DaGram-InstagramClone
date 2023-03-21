import { useNavigate } from "react-router-dom";
// uses history to get user information, had to change from useHistory to useNavigate, useHistory was not working
import FirebaseContext from '../context/firebase';
// used to get user information from firebase firestore database
import { useState, useContext, useEffect } from 'react';
//use State for storing values in a state

export default function Login() {
    const history = useNavigate();
    const { firebase } = useContext(FirebaseContext);
    // gets information about users, log in, does a user already exist,
    const [emailAddress, SetEmailAddress] = useState('');
    //gets email address for log in state 
    const [password, setPassword] = useState('');
    //gets password for state, and saves it in the state
    const [error, setError] = useState('');
    const isInvalid = password === '' || emailAddress === '';
    //checks if email or password is empty, throws an error isInvalid if they are
    const handleLogin = () => {};
    useEffect(() => {
        document.title = 'Login - DaGram'
    });
    //useEffect works by running on each FIRST render
    return (
        <div className="container flex mx-auto max-w-screen-md items-center h-screen">
            <p> Tailwind CSS test!</p>
        </div>
    );
}