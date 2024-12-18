# Utiliser l'image de base officielle Python
FROM python:3.9-slim

# Mettre à jour pip
RUN pip install --upgrade pip

# Copier le code de l'application dans le container
COPY . /app

# Définir le répertoire de travail
WORKDIR /app

# Exposer le port de l'application
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]

