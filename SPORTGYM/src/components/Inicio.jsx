import '../stylesheets/Inicio.css';
export function Inicio ({user, setUser}) {

    const handleLogout = () => {
        setUser([])
    }

    return (
        <div className='Inicio'>
            <h1>Bienvenido</h1>
            <h2>{user}</h2>
            <button onClick={handleLogout}>Cerrar sesion</button>
        </div>
    )
}