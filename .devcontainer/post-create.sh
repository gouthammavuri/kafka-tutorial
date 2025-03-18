#!/bin/bash

# Install OpenAI and Dotenv for Python
# TODO: Check why this can't be done in requirements.txt
pip install python-dotenv

# Install the OpenAI packages for Node.js
# (Python related dependencies are covered in requirements.txt)
# echo "Installing OpenAI For Node.js" 
# npm install --save openai

# Install protoc
PROTOC_VERSION=3.19.1
PROTOC_ZIP=protoc-$PROTOC_VERSION-linux-x86_64.zip
curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/$PROTOC_ZIP
unzip -o $PROTOC_ZIP -d protoc
sudo mv protoc/bin/protoc /usr/local/bin/
rm -rf protoc $PROTOC_ZIP

# Verify the installation
protoc --version