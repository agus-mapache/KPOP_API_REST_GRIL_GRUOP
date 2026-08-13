# K-Pop GIRL GROUP 

Una aplicación web interactiva que actúa como una base de datos multiverso para grupos y artistas de K-Pop. Esta aplicación permite explorar información detallada, roles y membresías de grupos a través de una interfaz moderna y minimalista con estética inspirada en "Rick and Morty".

## Características
- **API RESTful:** Construida con C# y .NET (Minimal APIs) para una respuesta ultra rápida.
- **Micro-ORM (Dapper):** Conexión eficiente y ligera a una base de datos MySQL.
- **Frontend Interactivo:** Interfaz web visual construida con HTML5, Bootstrap 5 y JavaScript moderno.
- **Acceso a Datos:** Consulta directa de grupos y artistas con visualización de imágenes y perfiles.
- **Integración con JSON:** Navegación directa a los endpoints de la API haciendo clic en los perfiles.

## Tecnologías Utilizadas
- **Backend:** .NET 8 / Minimal APIs.
- **Base de Datos:** MySQL.
- **ORM:** Dapper (para consultas SQL directas y eficientes).
- **Frontend:** Bootstrap 5, Google Fonts (Montserrat & Orbitron).
- **Servidor:** Kestrel (Integrado en .NET).

##  Estructura del Proyecto
- `wwwroot/`: Archivos estáticos (Frontend, HTML, CSS).
- `Endpoints/`: Lógica de ruteo de la API (`GroupEndpoints.cs`, `ArtistEndpoints.cs`).
- `Models/`: Definición de las clases de datos (`Group.cs`, `Artist.cs`).
- `Program.cs`: Configuración del servidor y middlewares.

##  Cómo ejecutarlo localmente

1. **Requisitos:**
   - Tener instalado [.NET SDK](https://dotnet.microsoft.com/).
   - Tener instalado [MySQL Server](https://www.mysql.com/).

2. **Configuración de BD:**
   - Ejecuta los scripts SQL proporcionados en el proyecto para crear las tablas `Grupo` y `Artists` e insertar la data inicial.

3. **Configuración:**
   - Abre `appsettings.json` y configura tu cadena de conexión a MySQL:
     ```json
     "ConnectionStrings": {
       "DefaultConnection": "Server=localhost;Database=KpopDb;User=root;Password=tu_password;"
     }
     ```

4. **Ejecución:**
   ```bash
   dotnet run

   *Personalización:* Si cambias el nombre del proyecto o añades nuevas funcionalidades, no olvides actualizar la sección de "Características".
