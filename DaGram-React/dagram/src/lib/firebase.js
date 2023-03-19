import Firebase from 'firebase/app';
import 'firebase/firestore';
import 'firebase/auth'

//Import seed file,

const config {
    apiKey: "AIzaSyBv540S56U6-jxxAl8EgeFVzYrXhN4IxRk",
    authDomain: "dagram-react.firebaseapp.com",
    projectId: "dagram-react",
    storageBucket: "dagram-react.appspot.com",
    messagingSenderId: "670352114563",
    appId: "1:670352114563:web:ba5dfab4cb4d74a632acb6"
};

const firebase = Firebase.initializeApp(config);
const { FieldValue } = Firebase.firestore;

//Run seed, only once!
// seedDatabase(firebase);
console.log('firebase', firebase);

export { firebase, FieldValue };