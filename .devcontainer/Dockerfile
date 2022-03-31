# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.209.6/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use hirsuite or bionic on local arm64/Apple Silicon): hirsute, focal, bionic
ARG VARIANT="hirsute"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] This installs extra packages that can be useful 
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libatomic1 \
    # For use in components that have python dependencies
    python3-pip \
    # To give simple cli for testing rest api
    httpie \    
    # To enable running the tesseract OCR component
    tesseract-ocr

RUN sudo python3 -m pip install --upgrade pip
# For annot8-components-opencv 
RUN sudo pip3 install opencv-python-headless==4.5.4.60
# For annot8-components-easyocr 
RUN sudo pip3 install easyocr fastapi python-multipart "uvicorn[standard]"