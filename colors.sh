// Lista de colores disponibles en W3.CSS
const coloresW3 = [
    "w3-pink", "w3-red", "w3-blue", "w3-teal", "w3-green",
    "w3-light-blue", "w3-purple", "w3-brown", "w3-orange", "w3-yellow",
    "w3-light-green", "w3-pale-yellow", "w3-deep-purple", "w3-deep-orange"
];

// Objeto para almacenar los colores asignados
const coloresAsignados = {};

// Funcion para obtener un color aleatorio y asegurarse de que no se repita
function obtenerColorUnico() {
    let colorAleatorio;
    do {
        // Elegir un color aleatorio
        colorAleatorio = coloresW3[Math.floor(Math.random() * coloresW3.length)];
    } while (Object.values(coloresAsignados).includes(colorAleatorio)); // Verificar si el color ya ha sido asignado

    return colorAleatorio;
}

// Funcion para asignar un color aleatorio único
function asignarColorAleatorio(elemento) {
    // Obtener un color único
    const colorUnico = obtenerColorUnico();

    // Agregar la clase de color único al contenedor del elemento
    elemento.classList.add(colorUnico);

    return colorUnico;
}

// Funcion para asignar colores a los divs con 'class' y su texto correspondiente
function asignarColoresClass() {
    // Seleccionamos todos los <p> que contienen 'class' seguido de texto
    const elementosClass = document.querySelectorAll('p');

    elementosClass.forEach(p => {
        // Expresion regular para extraer el texto entre 'class ' y ':'
        const match = p.textContent.match(/^class\s(.+?):$/);

        // Si el texto es valido y tiene el formato esperado (class <texto>:)
        if (match && match[1]) {
            const textoClass = match[1].trim();

            // Buscar el contenedor de este <p> (su padre mas cercano)
            const contenedor = p.closest('div');
            if (contenedor) {
                // Si no se ha asignado un color a este 'class', asignamos uno nuevo
                if (!coloresAsignados[textoClass]) {
                    coloresAsignados[textoClass] = asignarColorAleatorio(contenedor);
                } else {
                    // Si ya tiene un color asignado, usamos el mismo color
                    contenedor.classList.add(coloresAsignados[textoClass]);
                }
            }
        }
    });
}

// Funcion para manejar el clic en los iconos
function manejarClickIcono(event) {
    // Ejecutar la Funcion para asignar un color aleatorio cuando se haga clic en el icono
    asignarColoresClass();
}

// Funcion para agregar el evento a los iconos
function agregarEventosIconos() {
    // Seleccionamos todos los <i> con las clases 'fa fa-clone' y 'fa fa-lg fa-plus-circle'
    const iconos = document.querySelectorAll('i.fa.fa-clone, i.fa.fa-lg.fa-plus-circle');

    // Iterar sobre los iconos y agregar el evento de clic
    iconos.forEach(icono => {
        icono.removeEventListener('click', manejarClickIcono); // Para evitar duplicar el evento
        icono.addEventListener('click', manejarClickIcono);
    });
}

// Llamada inicial para asignar colores cuando la página cargue
document.addEventListener('DOMContentLoaded', function() {
    asignarColoresClass();
    agregarEventosIconos(); // Asegurarse de que los iconos existentes tienen el evento
});

// Usar un MutationObserver para detectar cuando se añaden nuevos iconos
const observer = new MutationObserver(function(mutationsList) {
    for (let mutation of mutationsList) {
        if (mutation.type === 'childList') {
            agregarEventosIconos(); // Volver a agregar los eventos a los iconos nuevos
        }
    }
});

// Observar cambios en el DOM
observer.observe(document.body, { childList: true, subtree: true });
