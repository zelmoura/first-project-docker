# 🐳 Python App — Docker

A Python application that runs inside a Docker container.

---

## 📁 Project Structure

```
mon-app/
├── app.py               # Main Python program
├── requirements.txt     # Python dependencies
├── Dockerfile           # Docker build instructions
└── README.md            # This file
```

---

## ✅ Prerequisites

Make sure you have installed:

- [Docker](https://docs.docker.com/get-docker/) `>= 20.x`
- Git

Check your installation:

```bash
docker --version
git --version
```

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/zelmoura/first-project-docker.git 1stproject
cd 1stproject
```

### 2. Build the Docker image

```bash
docker build -t mon-app-python .
```

> The `.` at the end is required — it tells Docker to look for the Dockerfile in the current directory.

### 3. Run the container

```bash
docker run mon-app-python
```

---

## ⚙️ Run Options

### Run in the background (detached mode)

```bash
docker run -d --name monapp mon-app-python
```

### Pass environment variables

```bash
docker run -e NOM=ZOHAIR mon-app-python
```

### Mount a local folder (volume)

```bash
docker run -v $(pwd)/data:/data mon-app-python
```

### Expose a port (e.g. Flask app)

```bash
docker run -d -p 5000:5000 mon-app-python
# Access at http://localhost:5000
```

### Run with all options combined

```bash
docker run -d \
  --name monapp \
  -p 5000:5000 \
  -e NOM=ZOHAIR \
  -v $(pwd)/data:/data \
  mon-app-python
```

---

## 🔍 Useful Commands

| Command | Description |
|---|---|
| `docker ps` | List running containers |
| `docker ps -a` | List all containers (including stopped) |
| `docker logs monapp` | View container logs |
| `docker logs -f monapp` | Follow logs in real time |
| `docker exec -it monapp bash` | Open a terminal inside the container |
| `docker stop monapp` | Stop the container |
| `docker rm monapp` | Remove the container |
| `docker images` | List all local images |
| `docker rmi mon-app-python` | Remove the image |

---

## 🔄 Rebuild After Code Changes

Every time you modify your code, rebuild the image:

```bash
docker stop monapp         # Stop old container
docker rm monapp           # Remove old container
docker build -t mon-app-python .   # Rebuild image
docker run -d --name monapp mon-app-python  # Start new container
```

---

## 🗑️ Cleanup

```bash
# Remove all stopped containers
docker container prune

# Remove unused images, containers, networks
docker system prune

# Remove everything including volumes (careful!)
docker system prune -a --volumes
```

---

## 🐍 Python Dependencies

Dependencies are listed in `requirements.txt` and installed automatically during the Docker build.

To add a new dependency:

1. Add it to `requirements.txt`:
   ```
   requests==2.31.0
   flask==3.0.0
   ```
2. Rebuild the image:
   ```bash
   docker build -t mon-app-python .
   ```

---

## 📝 Environment Variables

| Variable | Default | Description |
|---|---|---|
| `NOM` | `monde` | Example variable used in app.py |

---

## 🤝 Contributing

1. Fork the repository
2. Create your branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m "Add my feature"`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a Pull Request

---

## 📄 License

MIT License — feel free to use and modify this project.
