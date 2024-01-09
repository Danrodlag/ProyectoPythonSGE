# Usa la imagen oficial de Python 3
FROM python:3.10

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos al contenedor
COPY requirements.txt ./

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código fuente al contenedor
COPY . .

# Expone el puerto 80
EXPOSE 80

# Define las variables de entorno para la base de datos
ENV DATABASE_URL=postgresql://user:password@db:5432/mydatabase


# Ejecuta la aplicación
CMD ["python", "main.py"]
