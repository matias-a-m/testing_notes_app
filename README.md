# NotasApp

**NotasApp** es una aplicación simple de toma de notas desarrollada en SwiftUI y Swift. La aplicación permite a los usuarios crear, modificar y eliminar notas. Sigue el patrón MVVM (Modelo-Vista-Modelo de Vista) para separar la lógica de la interfaz de usuario de la lógica empresarial.

## Características

- **Lista de Notas**: Muestra una lista de todas las notas existentes.
- **Crear Nota**: Permite al usuario agregar nuevas notas con un título y texto.
- **Modificar Nota**: Permite al usuario actualizar el título y el texto de una nota existente.
- **Eliminar Nota**: Permite al usuario eliminar una nota existente.

## Estructura del Proyecto

- **NotasApp**: La estructura principal de la aplicación.
- **ContentView**: La vista principal que muestra la lista de notas y proporciona navegación a otras vistas.
- **ViewModel**: La clase ViewModel que gestiona la lógica empresarial.
- **CretaeNoteView**: La vista para crear una nueva nota.
- **UpdateNoteView**: La vista para actualizar una nota existente.
- **Note**: La estructura de datos que representa una nota.

## Pruebas Unitarias

Se han incluido pruebas unitarias para verificar la lógica empresarial de las notas y del ViewModel.

## Requisitos

- iOS 15.0+
- Swift 5.5+

## Instalación

1. Clona el repositorio.
2. Abre el proyecto en Xcode.
3. Ejecuta la aplicación en un simulador o dispositivo compatible.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

