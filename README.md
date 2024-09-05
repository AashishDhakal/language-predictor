# FastText Language Detection with Flask

This project is a web-based application that uses the **FastText** language detection model to predict the language of a given text. It runs on a **Flask** web server and is containerized using **Docker** and **Docker Compose**.

## Features

- **Web Form**: Enter text via a web form and detect the language.
- **FastText Model**: Uses the FastText `lid.176.bin` pre-trained model for language detection, supporting 176 languages.
- **Dockerized**: Fully containerized for easy setup and deployment.
- **Automatic Model Download**: The FastText model is automatically downloaded if not present when the container starts.

## Prerequisites

To run this application, you need to have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup and Installation

### 1. Clone the Repository

```bash
git clone https://github.com/AashishDhakal/language-predictor.git
cd language-predictor
```

### 2. Build and Run the Docker Container

```bash
docker-compose up --build
```

### 3. Access the Web Application

Open your browser and go to `http://localhost:3000` to access the web application.

## Usage

1. Enter the text you want to detect the language for in the text area.
2. Click the **Detect Language** button.
3. The detected language will be displayed below the button.

