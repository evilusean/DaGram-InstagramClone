import Firebase from 'firebase/app';
import 'firebase/firestore';
import 'firebase/auth'

//Import seed file,

const config {};

const firebase = Firebase.initializeApp(config);
const { FieldValue } = Firebase.firestore;

//Run seed, only once!