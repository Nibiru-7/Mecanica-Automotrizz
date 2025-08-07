# Script para configurar variables de entorno automáticamente
Write-Host "🔧 Configurando variables de entorno..." -ForegroundColor Green

$envContent = @"
# Configuración de la base de datos MySQL
DB_HOST=mysql
DB_PORT=3306
DB_USER=root
DB_PASSWORD=rootpassword
DB_DATABASE=mecanica_db
DB_ROOT_PASSWORD=rootpassword

# Configuración del servidor
PORT=3000

# Configuración JWT (para autenticación)
JWT_SECRET=mi_super_secreto_jwt_para_desarrollo

# Configuración Azure Storage (opcional - dejar vacío si no usas)
AZURE_STORAGE_CONNECTION_STRING=
AZURE_STORAGE_CONTAINER_NAME=
"@

$envContent | Out-File -FilePath ".env" -Encoding UTF8

Write-Host "✅ Archivo .env creado exitosamente!" -ForegroundColor Green
Write-Host "📝 Puedes editar el archivo .env para personalizar las configuraciones" -ForegroundColor Yellow
