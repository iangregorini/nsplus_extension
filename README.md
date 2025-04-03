# Asignación de Colores Aleatorios a Elementos en NSPlus

## Descripción

Este script está diseñado para ser utilizado en el aplicativo web **NSPlus** creado por Charly Cimino. Su función principal es asignar colores aleatorios y únicos a todos los métodos de la misma clase.

## ¿Cómo Funciona?

Al abrir la página de **NSPlus** en tu navegador, puedes utilizar este script de dos formas:

1. **Pegando el código en la consola de las herramientas de desarrollo del navegador.**
2. **Usando la extensión [Tampermonkey](https://www.tampermonkey.net/) para insertar y ejecutar el código en tu navegador.**

En cualquiera de estos casos, el script asignará colores aleatorios y únicos a los elementos de la página que tengan el mismo nombre de clases, asegurando que cada nombre de clase tenga un color único que no se repita.

## Instalación

### Opción 1: Usando la Consola del Navegador

1. **Abrir la página de NSPlus** en una pestaña de tu navegador.
2. **Abrir las herramientas de desarrollo** (generalmente con la tecla `F12` o clic derecho y seleccionar "Inspeccionar").
3. **Ir a la pestaña de Consola**.
4. **Pegar el código del script** en la consola y presionar `Enter`.
5. Si la consola muestra el mensaje **'allow pasting'** o **'habilitar pegado'** (dependiendo del idioma), simplemente escribe el comando indicado en la consola para habilitar el pegado del código.

Este método ejecutará el script directamente en la página cargada.

### Opción 2: Usando Tampermonkey

1. **Instalar Tampermonkey** desde [aquí](https://www.tampermonkey.net/).
2. **Crear un nuevo script** desde la página de **NSPlus**:
    - Ve a la página de NSPlus.
    - Haz clic en el ícono de **Tampermonkey** en la barra de herramientas de tu navegador.
    - Selecciona "Crear un nuevo script".
3. **Pegar el código del script** dentro del nuevo script creado en Tampermonkey.
4. **Guardar el script** y activar Tampermonkey.

Una vez configurado, el script se ejecutará automáticamente cada vez que cargues la página de **NSPlus** en tu navegador.

## Características

- **Colores Aleatorios**: El script selecciona colores aleatorios de una lista predefinida de clases de color de **W3.CSS**. Los colores son únicos para cada nombre de clase.
- **Interactividad**: Los colores se asignan automáticamente al cargar la página, y también se asignan cuando se crea o se duplica algún elemento.
  
