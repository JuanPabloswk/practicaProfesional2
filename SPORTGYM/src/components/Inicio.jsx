import '../stylesheets/Inicio.css';
import { Header } from '../components/Header.jsx';
import { Planes } from '../components/Planes.jsx';
export function Inicio ({user, setUser}) {

    const handleLogout = () => {
        setUser([])
    }

    return (
        
        <div className='Inicio'>
            {/* aqui va el componente del header */} 
            <Header />
            <h1>Bienvenido</h1>
            <h2>{user}</h2>
            <button onClick={handleLogout}>Cerrar sesion</button>
            <Planes />
            {/* aqui va el componente del footer */} 
            {/* prueba */} 

        </div>
    )
}