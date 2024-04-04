import '../stylesheets/Planes.css';


export function Planes () {
    return (
        <div className='container'>
            <h2>Planes</h2>
            <div className='planes'>
                <div className='estandar'>Plan estandar
                    <button>Comprar</button>
                </div>
                <div className='personalizado'>plan personalizado
                    <button>Comprar</button>
                </div>
            </div>
            
        </div>
    )
}