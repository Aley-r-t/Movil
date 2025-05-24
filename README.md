# 📱 RegisterScreen – Desglose de Widgets Clave

Este documento explica los componentes menos obvios que aparecen en `lib/screens/register_screen.dart`, para que cualquier colaborador entienda rápidamente cómo y por qué se usan.

| Sección | Widget / API | ¿Para qué se usa? |
|---------|--------------|-------------------|
| **1. Gestión de estado** | **`StatefulWidget` / `State`** | Necesitamos redibujar la pantalla cada vez que se añade un nuevo producto, por eso `RegisterScreen` es *stateful* y usamos `setState()` para notificar el cambio. |
| **2. Entrada de texto** | **`TextEditingController`** | `nameController` y `priceController` guardan temporalmente el texto que el usuario escribe en cada `TextField`; luego leemos su contenido y los limpiamos con `clear()` al pulsar **GUARDAR**. |
| **3. Estructura de datos rápida** | **`List<Map<String,String>> productos`** | Cada producto se guarda como un *map* con claves `nombre` y `precio`. Es un atajo práctico mientras la app es pequeña (en producción conviene usar una clase modelo `Product`). |
| **4. Redibujado de la UI** | **`setState(() { ... })`** | Envuelto alrededor de la lógica que añade productos a la lista. Fuerza a Flutter a reconstruir la interfaz y mostrar el nuevo ítem al instante. |
| **5. Distribución flexible** | **`Expanded` + `ListView.builder`** | `Expanded` ocupa el espacio restante en la columna; `ListView.builder` renderiza ítems de forma perezosa, perfecta para listas potencialmente largas. |
| **6. Separador visual** | **`Divider`** | Línea sencilla que divide el formulario de la lista de resultados, sin necesidad de `Container` extra. |
| **7. Teclado numérico** | `keyboardType: TextInputType.number` | En móviles abre el teclado numérico para el campo de precio, mejorando la UX. |

## 📝 Flujo breve de la pantalla

1. El usuario introduce **nombre** y **precio**.  
2. Pulsa **GUARDAR** → `setState()` agrega `{nombre, precio}` a `productos`.  
3. `ListView.builder` se reconstruye y muestra el nuevo elemento.  

Con esta explicación cualquier desarrollador nuevo sabrá qué hace cada pieza “poco evidente” y cómo encaja en la lógica general del registro de productos.  
¡A mergear sin miedo! 🚀
