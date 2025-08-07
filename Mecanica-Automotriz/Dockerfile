# Etapa 1: Construcción
FROM node:18 AS builder

WORKDIR /usr/src/app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar todas las dependencias (incluyendo devDependencies)
RUN npm ci

# Copiar tsconfig.json
COPY tsconfig.json ./

# Copiar código fuente
COPY src ./src

# Compilar TypeScript
RUN npm run build

# Etapa 2: Producción
FROM node:18-alpine

WORKDIR /usr/src/app

# Copiar package.json para instalar solo dependencias de producción
COPY package*.json ./

# Instalar solo dependencias de producción
RUN npm ci --only=production

# Copiar archivos compilados
COPY --from=builder /usr/src/app/dist ./dist

# Crear archivo .env vacío si no existe (deberás configurarlo)
RUN touch .env

EXPOSE 3000

CMD ["npm", "start"]
