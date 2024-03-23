import './App.css';
import { Login }  from './components/Login.jsx';
import { Inicio } from './components/Inicio.jsx';
import { useState } from 'react';

export default function App() {

  const [user, setUser] = useState([])

  return (
    <>
      <div className='App'>   
        
        {
          !user.length > 0
          ? <Login setUser = {setUser} />  
          : <Inicio user = {user} setUser = {setUser} />
        }
      </div>
      
    </>
  )
}


