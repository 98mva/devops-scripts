# 🚀 DevOps CI/CD Pipeline with Jenkins & Docker

This repository demonstrates a real-world CI/CD pipeline using Jenkins, Docker, GitHub, and shell scripting. Built and deployed via Jenkins running on an AWS EC2 instance (`t2.micro`), the pipeline auto-builds and pushes Docker images to Docker Hub.

---

## 🛠️ Tech Stack

- **Jenkins** – CI/CD server hosted on EC2
- **Docker** – For image building & deployment
- **GitHub** – Source code repository
- **Shell Scripting** – Monitoring and automation scripts
- **Docker Hub** – Image registry: [docker.io/97418485/devops-script](https://hub.docker.com/repository/docker/97418485/devops-script)

---

## 📦 Project Files

| File              | Description                                |
|-------------------|--------------------------------------------|
| `.env`            | Example environment file                   |
| `disk-monitor.sh` | Script to monitor disk usage               |
| `env-reader.sh`   | Reads and prints environment variables     |
| `error-check.sh`  | Script for error handling demonstration    |
| `hello.sh`        | Simple Hello World script                  |
| `log-checker.sh`  | Checks logs for specific patterns/errors   |
| `loop-and-check.sh` | Script using loops and conditions       |
| `uptime-logger.sh` | Logs uptime at intervals                 |

---

## 🔁 CI/CD Pipeline Flow

1. Jenkins pulls the latest code from GitHub.
2. A Docker image is built using the latest commit hash as the tag.
3. Jenkins authenticates to Docker Hub.
4. The image is pushed to the Docker Hub repo.

---

## 📋 Sample Shell Build Script (Jenkins)

```bash
echo "🔧 Building Docker image..."
docker build -t 97418485/devops-script:${GIT_COMMIT::7} .

echo "🔐 Logging into Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "97418485" --password-stdin

echo "📤 Pushing Docker image to Hub..."
docker push 97418485/devops-script:${GIT_COMMIT::7}

---

Screenshots.

![image](https://github.com/user-attachments/assets/72313459-90f5-4fd9-9ffb-38c6c33394e7)
![image](https://github.com/user-attachments/assets/c9e75457-50f4-4f26-b9de-a2f8a0a951b8)

---

## Author

👤 **Akshay MV**

- GitHub: [@98mva](https://github.com/98mva)
- Docker Hub: [97418485](https://hub.docker.com/u/97418485)

