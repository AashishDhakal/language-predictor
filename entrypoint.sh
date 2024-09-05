#!/bin/bash

# Check if the model file exists
if [ ! -f /app/lid.176.bin ]; then
    echo "Model not found. Downloading the FastText language detection model..."
    wget -O /app/lid.176.bin https://dl.fbaipublicfiles.com/fasttext/supervised-models/lid.176.bin
else
    echo "Model already exists. Skipping download."
fi

# Start the Flask application
python app.py
