# Étape 1 : image de base Python (légère)
FROM python:3.11-slim

# Étape 2 : définir le dossier de travail dans le conteneur
WORKDIR /app

# Étape 3 : copier et installer les dépendances EN PREMIER
# (optimisation cache Docker : ne se réinstalle que si requirements change)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4 : copier le reste du code
COPY . .

# Étape 5 : commande de démarrage
CMD ["python", "app.py"]
