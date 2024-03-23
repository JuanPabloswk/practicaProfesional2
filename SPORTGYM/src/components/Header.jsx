import '../stylesheets/Header.css';

export function Header () {

    return (
    <header>
        <div className='menu'>
            <div className='logo'>
                <img src='../public/assets/icono.ico' width='55px' height='55px' />
            </div>
            <div className='menu-botones'>
                <a>Home</a>
                <a>Tienda</a>
                <a>Clases</a>
                <a>Sobre Nosotros</a>
                <a>Contactenos</a>
            </div>
        </div>
    </header>
    )
}