import '../stylesheets/Login.css';
import { useState } from 'react';
import { FaUser } from 'react-icons/fa';
import { FaLock } from 'react-icons/fa';

export function Login({setUser}) {
    const [nombre, setNombre] = useState('');
    const [contraseña, setContraseña] = useState('');
    const [error, setError] = useState(false);

    const handleSubmit = (e) => {
        e.preventDefault()

        if (nombre === '' || contraseña === '') {
            setError(true)
            return
        }

        setError(false)

        setUser([nombre])
    };

    return (

        <section>

            <h1>Login</h1>

            <form
                onSubmit={handleSubmit}>
                <input type='text' placeholder='Ingresa tu usuario' value={nombre}
                onChange={e => setNombre(e.target.value)} required />
                <FaUser className='icon1' />
                
                <input type='password' placeholder='Ingresa tu contraseña' value={contraseña} 
                onChange={e => setContraseña(e.target.value)} required />
                <FaLock className='icon2' />

                <button>Iniciar Sesion</button>
            </form>
            {error && <p>Todos los campos son obligatorios</p>}

            <div className='olvidaste'>
                <a href='https://developer.mozilla.org/en-US/' target='_blank'>¿Olvidaste tu contraseña?</a>
                <a href='https://developer.mozilla.org/en-US/' target='_blank'>¿No tienes cuenta?</a>
            </div>

        </section>
        
    );
  }
  
