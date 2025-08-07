# API Mecánica Automotriz

API REST desarrollada en TypeScript con Express y MySQL.

## 🐳 Despliegue con Docker Desktop

### Prerrequisitos
- Docker Desktop instalado y ejecutándose
- Git

### Pasos para desplegar:

1. **Clonar el repositorio:**
   ```bash
   git clone <tu-repositorio>
   cd Mecanica-Automotriz
   ```

2. **Configurar variables de entorno:**
   ```bash
   # Copiar el archivo de ejemplo
   cp env.example .env
   
   # Editar .env con tus valores reales
   nano .env
   ```

3. **Construir y ejecutar con Docker Compose:**
   ```bash
   docker-compose up --build
   ```

4. **Verificar que la aplicación esté funcionando:**
   - API: http://localhost:3000
   - Base de datos MySQL: localhost:3306

### Variables de entorno requeridas:

```env
# Base de datos
DB_HOST=mysql
DB_PORT=3306
DB_USER=tu_usuario
DB_PASSWORD=tu_password
DB_DATABASE=tu_base_de_datos

# Servidor
PORT=3000

# JWT
JWT_SECRET=tu_jwt_secret

# Azure Storage (opcional)
AZURE_STORAGE_CONNECTION_STRING=tu_connection_string
AZURE_STORAGE_CONTAINER_NAME=tu_container
```

### Comandos útiles:

```bash
# Ver logs
docker-compose logs -f

# Detener servicios
docker-compose down

# Reconstruir sin cache
docker-compose up --build --force-recreate

# Acceder al contenedor
docker-compose exec app sh
```

### Estructura del proyecto:
```
src/
├── app.ts              # Configuración de Express
├── server.ts           # Punto de entrada
├── controllers/        # Controladores
├── routes/            # Rutas de la API
├── database/          # Configuración de base de datos
├── middlewares/       # Middlewares
└── utils/             # Utilidades
```

## 🚀 Desarrollo local

```bash
npm install
npm run dev
```

La aplicación estará disponible en http://localhost:3000