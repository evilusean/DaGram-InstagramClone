import { useNavigate } from "react-router-dom";
import FirebaseContext from '../context/firebase';
import React, { useState, useContext, useEffect } from 'react';
import * as ROUTES from '../constants/routes';

export default function Login() {
    const history = useNavigate();
    const { firebase } = useContext(FirebaseContext);
    const [emailAddress, SetEmailAddress] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const isInvalid = password === '' || emailAddress === '';
    const handleLogin = () => {};
    useEffect(() => {
        document.title = 'Login - DaGram'
    }, []);
    return (
        <div className="container flex mx-auto max-w-screen-md items-center h-screen">
            <div className="flex w-3/5">
                <img src="/images/iphone-with-profile.jpg" alt="Iphone with instagram" />
            </div>
            <div className="flex flex-col w-2/5">
                <p> Form Incoming</p>
            </div>
        </div>
    );
}