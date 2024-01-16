from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
import os

# Obtiene la URL de la base de datos de las variables de entorno
database_url = os.getenv('DATABASE_URL')

# Crea el motor de la base de datos
engine = create_engine(database_url)

# Crea una sesión de la base de datos
Session = sessionmaker(bind=engine)
session = Session()
